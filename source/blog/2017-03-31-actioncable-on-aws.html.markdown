---
date: '2017-03-31 10:58 +0100'
published: true
title: Running ActionCable behind Elastic Load Balancers on AWS
authors:
  - Tom Sabin
  - Charlie Egan
tags:
  - Rails
  - Innovation
  - Testing
has_syntax: true
main_image: http://i.imgur.com/mhu8lOx.png
---

We were recently tasked with adding a feature that showed the status of a IoT
device as it changed. It was important that the status page updated quickly;
and given we'd recently upgraded to Rails 5, this was a prime opportunity to
learn ActionCable. What follows is a post detailing how we overcame a number of
challenges in getting the feature deployed.

## ActionCable adapters & the misleading `async`

One of benefits of using ActionCable is just how easy it is to get it up and
running. When we upgraded to Rails 5, we used [RailsDiff](http://railsdiff.org/4.2.8/5.0.2)
to find the default settings required for ActionCable. We opted to use the
`postgres` adapter over the default Redis adapter for our production
environments to reduce the number of moving parts.

However, for dev and test environments, the default adapter is `async`. The
[adapter section on the Action Cable Overview](http://edgeguides.rubyonrails.org/action_cable_overview.html#subscription-adapter)
has a very limited description of what `async` actually is:

> The `async` adapter is intended for development/testing and should not be used
> in production.

As this was the first time we had used ActionCable, we were keen to get the
most simple end-to-end implementation working in order to understand how
everything interacts. The HTTP request successfully upgraded to a WebSocket
connection and in our logs we could see that a client had subscribed -
[simple](http://footage.framepool.com/shotimg/562656858-meerkat-zoo-standing-looking-at-camera.jpg)!
Next thing to try out was the broadcasting, so naively we booted up a Rails
console and typed...

```ruby
connector = Connector.last
ConnectorStatusChannel.broadcast_to(connector, { foo: "bar" })
```

We were expecting to see the message show up in the browser console - it
didn't. After some investigation, we narrowed it down to the `async` adapter.
We had two terminal tabs open; one for the rails server and another for the
console. They are two separate processes, the WebSocket server runs
[in-app](http://edgeguides.rubyonrails.org/action_cable_overview.html#in-app).
To have cross-process broadcasting, we had to switch to a
[multi-threaded web server](http://edgeguides.rubyonrails.org/action_cable_overview.html#deployment)
and to use the `postgres` adapter in development as well. After learning this,
it seems to us that the `async` adapter is poorly named...

Our `cable.yml` config ended up as follows:

```yaml
#config/cable.yml

production: &default
  adapter: postgresql

uat:
  <<: *default

qa:
  <<: *default

development:
  <<: *default

test:
  adapter: async
```

## Testing ActionCable with Capybara

ActionCable will [not work without a multi-threaded web server](http://edgeguides.rubyonrails.org/action_cable_overview.html#deployment),
so we included `Capybara.server = :puma` in `spec/rails_helper.rb`. We didn't
run into many other problems with our local test environment, but CircleCI we
saw an error in the page that used ActionCable:

```
Error during WebSocket handshake: protocol mismatch: actioncable-v1-json,actioncable-unsupported
```

The Capybara machines were running [Ubuntu 12.04](https://circleci.com/docs/1.0/build-image-precise/)
and we found that the version of PhantomJS was 1.9.8. Version 1.x does not
support WebSockets (testable with [WebSocket Echo Test](http://www.websocket.org/echo.html)
, so we needed to upgrade PhantomJS to 2.1.1 (the latest version). This was done with a
custom CircleCI configuration and a bash script to download and cache the
`phantomjs` executable.

<script src="https://gist.github.com/tomsabin/f4b809db61186914f89a7f1ab2585300.js"></script>

Later in the project we had a scenario where multiple users were visiting the
same page and we wanted to ensure that the page update was unique to each user.
We created a test helper named `in_session(...)` so that we could visit a page,
perform an action and swap between sessions to check that each user received
the correct message.

<script src="https://gist.github.com/tomsabin/652be7272c9829bde9f4409e95ae57bd.js"></script>

## Accessing `current_user` from Devise in the connection

We are using Devise for authentication and needed the `current_user`, when
handling WebSocket connections. This was easy to do in the `Connection` class
as we could access the signed in user record with `env["warden"].user`.

We did not want to reject an unauthorised connection, our feature was also open
to guest visitors.

```ruby
# app/channels/application_cable/connection.rb

module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = env["warden"].user
    end
  end
end
```

## Upgrading from an ELB to Application Load Balancer

AWS Application Load Balancers (ALBs) are able to forward WebSocket
connections, new functionality that's not easily configurable on Elastic Load
Balancers. We didn't realise this at first and were getting the following error:

```
WebSocket connection to 'wss://example.com/cable/' failed: Error during WebSocket handshake: Unexpected response code: 400
```

Before adding ActionCable, we had this setup for our
environments on AWS: app instances were spawned into an *Auto Scaling Group*
(as per a launch configuration) which was in turn connected to an Elastic Load
Balancer. Here's a simplified example of how this was setup in Terraform:

```tf
resource "aws_elb" "default" {
  name = "elb-${var.environment}"
  ...
}

resource "aws_autoscaling_group" "app" {
  name = "app-asg-${var.environment}"
  load_balancers = [ "${aws_elb.default.name}" ]
  launch_configuration = "${aws_launch_configuration.app.name}"
  ...
}

resource "aws_launch_configuration" "app" {
  name_prefix = "app-lc-${var.environment}-"
  image_id = "${var.ami_name}"
  instance_type = "${var.app_instance_type}"
  ...
}
```

We needed to change this to use an ALB to for our ActionCable feature to work.
After upgrading, our AWS environments are setup as follows; instances are still
spawned into Auto Scaling Groups but this is now connected to an ALB
*Target Group* instead of an ELB. This *Target Group* is connected to the
listeners of a new ALB - which looks something like this in Terraform:

```tf
resource "aws_alb" "default" {
  name = "alb-${var.environment}"
  ...
}

resource "aws_alb_target_group" "default" {
  name = "alb-${var.environment}-tg"
  ...
}

resource "aws_alb_listener" "https" {
  load_balancer_arn = "${aws_alb.default.arn}"
  ...
  default_action {
    target_group_arn = "${aws_alb_target_group.default.arn}"
  }
}

resource "aws_autoscaling_group" "app" {
  name = "app-asg-${var.environment}"
  target_group_arns = ["${aws_alb_target_group.default.arn}"]
  launch_configuration = "${aws_launch_configuration.app.name}"
  ...
}

resource "aws_launch_configuration" "app" {
  # remains the same
}
```

## Configuring NGINX

We also ran into the following browser console error:

```
WebSocket connection to 'ws://example.com/cable/' failed: WebSocket is closed before the connection is established.
```

The good news is that NGINX supports WebSocket connections - we just needed to
update our configuration to upgrade `/cable` HTTP connections to WebSocket
connections.

```nginx
location /cable {
  proxy_pass http://rails_app;
  proxy_http_version 1.1;
  proxy_set_header Upgrade "websocket";
  proxy_set_header Connection "Upgrade";
}
```

It's worth commenting that there seems to be some conflicting advice regarding
`/cable` vs. `/cable/`. It didn't seem to make a difference for us.


## Allowed origins

According to the Rails [documentation](https://github.com/rails/rails/tree/5-1-stable/actioncable#allowed-request-origins):

> only an origin matching the cable server itself will be permitted

However, we continued to get the following browser error:

```
ws://example.com/cable' failed: Error during WebSocket handshake: Unexpected response code: 404
```

In the end we had to add our domain to `allowed_request_origins`:

```diff
# config/environments/production.rb

+ config.action_cable.allowed_request_origins = [ "https://example.com" ]
```

There's likely a way to avoid this but for now we're making do!

Good luck!
