---
layout: "blog_article"
date: "2015-05-19 12:31:00 UTC"
published: true
title: "Sharing your local development server and setting up a local mail server"
author: "Alan Thomas"
tags:
  - Rails
---

I’ve recently been on a project, where for various reasons, we didn’t have a test/staging/QA server available. The lack of this environment caused a slight blocker for QA and UAT/sign off. I decided to configure my own local development server to be available to the rest of the team, whilst we waited for the test environment to become available. Please note that this guide is for a Ruby on Rails project and assumes your local machine is a Mac.

## Sharing your server locally

When you run your server, you probably use the command:

> ``bundle exec rails s``

With the above command if you try and share that with someone else via your local IP address, e.g. ``http://192.168.0.6:3000``, you’ll find that they are blocked.

Instead you need to use:

> ``bundle exec rails s -b 0.0.0.0``

This happens, as of Rails 4, by default it only binds to localhost, asking it to bind to ``0.0.0.0`` means listen on all network interfaces.

## Sharing your server over the internet

The above solution works just fine if you and everybody who needs to see the server are on the same network. This is clearly not often the case, and therefore you probably want to have your server available over the internet.

If you do share your local machine over the internet, you probably only want to do this as a temporary solution. A laptop doesn't make for the best infrastructure....

Firstly, you’ll need to ascertain your external IP address (http://www.whatsmyip.org/ should work just fine) and then you need to setup port forwarding on the router you’re connected to. The majority of routers are accessible via ``http://192.168.0.1``, but that may not be the case and if you are in a managed environment you might need to ask someone.

Once you are in the router configuration, you can update the settings for port forwarding. The settings for this are commonly found in firewall rules. Set port ``3000`` to direct to your local IP (the ``192.168`` one) and then you can access the website externally, e.g. ``http://<external-ip>:3000``

If you can't change router settings, then you may want to consider a service such as https://ngrok.com

## Managing your site remotely

You may also want to manage your site remotely, i.e. update it with the latest code, run migrations etc.  In order to do this you will need to setup another port forwarding rule, but this time for port ``22``.

Then you can ssh to your server with an already existing username on your machine:

> ``ssh username@external-ip-address``

You’ll find that you probably won’t be able to do all the things you want, e.g. pull from github. In order to do this, you’ll need to make sure you have your private ssh key on your remote machine and use the ``–A`` parameter to use that:

> ``ssh –A username@external-ip-address``

## Setting up a local mail server

The site I needed to share happened to use a lot of email. This was fine for me, as I could see any emails being sent and their links in my local logs, but wasn’t very useful for external folks.

If you are using a Mac, then helpfully it comes with a (unconfigured) Postfix server ready for you to use. Setting it up is pretty straight forward, assuming you’ve not touched it already.

Create a file to store your credentials:

> ``sudo vim /etc/postfix/sasl_passwd``

Then add inside something like this:

> ``smtp.gmail.com:587 username@gmail.com:password``

If you are using Google Apps, replace ``gmail.com`` for your own domain.

Now run:

> ``sudo postmap /etc/postfix/sasl_passwd``

And finally prepare the postfix main configuration file:

> ``sudo vim /etc/postfix/main.cf``

And add these lines:

> ``mydomain_fallback = localhost mail_owner = postfix setgid_group = postdrop relayhost=smtp.gmail.com:587 smtp_sasl_auth_enable=yes smtp_sasl_password_maps=hash:/etc/postfix/sasl_passwd smtp_use_tls=yes smtp_tls_security_level=encrypt tls_random_source=dev:/dev/urandom``

## Start the Service

> ``sudo postfix start``

You will probably want any email links to go out with your external IP address, so that others can just click on them, I found my settings in ``config.action_mailer.default_url_options``
