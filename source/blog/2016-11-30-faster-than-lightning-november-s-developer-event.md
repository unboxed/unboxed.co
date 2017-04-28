---
date: '2016-11-30 10:31 +0000'
published: true
title: 'Faster than Lightning: November''s Developer Event'
authors:
  - Neil van Beinum
  - Graeme McCubbin
tags:
  - Innovation
  - Rails
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-images/c7bf974d0194c0ed97c26e4e19499306.png
has_syntax: true
---
Interesting code snippets, insightful discussion, story sharing and good company - it’s November’s ‘Faster than Lightning’ developer talks at Unboxed.<br/>

![Faster than Lightning November](https://s3-eu-west-1.amazonaws.com/unboxed-web-images/e5eafbab67a71407a8f22e7e645bc684.jpg)

Here’s a selection of the submissions from this month:<br/>
<br/>


## [Charlie](https://unboxed.co/people/#charlie-egan)
Interestingly; it's possible to use an unassigned variable in the assignment of that same variable. Otherwise Ruby raises an error that the variable is undefined. I didn't even notice that it wouldn't work outside of the assignment until Ben pointed it out to me.<br/>

```ruby
irb(main):001:0> (attempt_count || 0) + 1
NameError: undefined local variable or method `attempt_count' for main:Object
    from (irb):1
    from /usr/bin/irb:12:in `<main>'
irb(main):002:0> attempt_count = (attempt_count || 0) + 1
=> 1
```

<br/>
## [Andrew](https://unboxed.co/people/#andrew-white)
We recently added a small set Rubocop rules to Rails to help us make sure our relatively relaxed style rules are maintained and one of the issues was how to address indentation with case or if statements that have their result assigned to a variable. With a standard indent you tend to lose the initial case or if line and with the full indent you get large blocks of unsightly whitespace. The latter is especially irritating to myself having spent a good number of years laying out copy in Xpress or InDesign. I often write my code as if I were laying out copy for a story because that's in essence what you're trying to do for anyone else that will read your code in the future.<br/>


The solution we chose was to use the \ character to continue the first line onto the next line which allows us to use the standard indent but not have the if expression or the case variable lost at the right of the first line. Most of all it meets the need of not offending my aesthetic senses.<br/>

```ruby
# Standard Indent
proceed = case signal
  when "Red"
    false
  when "Amber"
    can_stop? ? true : false
  else
    false
  end


# Full Indent
proceed = case signal
          when "Red"
            false
          when "Amber"
            can_stop? ? true : false
          else
            false
          end


# The Chosen Way
proceed = \
  case signal
  when "Red"
    false
  when "Amber"
    can_stop? ? true : false
  else
    false
  end
```
  
<br/>
## [Crystal](https://unboxed.co/people/#chris-carter)
This is a piece of code that I wrote in order to interact with a command line utility called `ogr2ogr`. It’s used for converting map data from different formats, and in my use case I was converting it from MapInto TAB format, and importing it directly into a PostgreSQL table. The first half of the code snippet deals with pulling the credentials, host and database name from Rails configuration, and then puts it into `key=value` form for passing to the utility. The latter half of the code snippet appends arguments to the utility onto an array, adding values for several arguments an options. The options themselves aren’t important, but the call to `Kernel.system` is. Calling it with `args.join(" ")` created a String, and this ran the command line utility without an issue, however calling it with `*args` does not. This has something to do with whether the system call creates a sub-shell or not, and resulted in an issue with quoting which I hadn’t expected. Good to know!<br/>

```ruby
db_config = Rails.configuration.database_configuration[Rails.env]


db_arguments = {}
db_url = URI(db_config["url"])


db_arguments["user"]     = db_url.user
db_arguments["password"] = db_url.password
db_arguments["host"]     = db_url.hostname
db_arguments["dbname"]   = db_config["database"] || db_url.path[1..-1]


db_string = db_arguments.each_pair.map do |k, v|
  [k, v].join("=")
end.join(" ")


args = %w[ogr2ogr]
args.concat ["-overwrite"]
args.concat ["-s_srs", "http://spatialreference.org/ref/epsg/27700/"]
args.concat ["-t_srs", "http://spatialreference.org/ref/epsg/4326/"]
args.concat ["-f", "PostgreSQL"]
args.concat ["'PG:#{db_string}'"]
args.concat [tab_file_path]
args.concat ["-nln", temp_import_table_name]
args.concat ["-nlt", "PROMOTE_TO_MULTI"]
args.concat ["-lco", "GEOMETRY_NAME=geometry"]


Kernel.system(
  args.join(" ")
)
```

<br/>
## [Tom](https://unboxed.co/people/#tom-sabin)
This is a before and after view of the same spec. When I updated the mocked response from Chargify, which changed the customer reference, the failure message wasn’t clear and meant that I spent some time investigating what the problem actually was.<br/>

```ruby
it "saves the customer reference from Chargify" do
  CreateChargifySubscription.new(user, credit_card, subscription_type).perform
  expect(Subscription.find_by_customer_reference("28527491")).to be_present
end
```

After changing it to the following, our failure message was much clearer (“expected customer_reference to equal 28527491 but was 48561357”) and we are also ensuring that our `.last` is actually picking out the expected record.<br/>

```ruby
it "saves the customer reference from Chargify" do
  expect {
    CreateChargifySubscription.new(user, credit_card, subscription_type).perform
  }.to change(Subscription, :count).from(0).to(1)
  expect(Subscription.last.customer_reference).to eq("28527491")
end
```

<br/>
## [Charlie](https://unboxed.co/people/#charlie-egan)
We have many workers that make calls to many other workers to complete an import of some data. When there are a large number of jobs already in processing; it's hard to work out when all the jobs will finish. We implemented a ConditionallyAsync concern that could be included to workers that would switch `perform` and `perform_async` based on the current configuration. This meant that we could choose to run adhoc jobs in series. The snippet is the test for the concern using a Struct as an example worker.<br/>

```ruby
require 'rails_helper'


RSpec.describe ConditionallyAsync do
  let (:test_worker_class) {
    Struct.new(:data) {
      include ConditionallyAsync
    }
  }


  it 'calls perform on an instance when configured' do
    allow(Rails.configuration).to receive(:workers_should_perform_async).and_return(false)
    expect_any_instance_of(test_worker_class).to receive(:perform)
    test_worker_class.conditionally_perform_async()
  end


  it 'calls perform on an instance when configured' do
    allow(Rails.configuration).to receive(:workers_should_perform_async).and_return(true)
    expect(test_worker_class).to receive(:perform_async)
    test_worker_class.conditionally_perform_async()
  end
end
```





