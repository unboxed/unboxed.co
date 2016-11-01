---
date: '2016-08-12 12:15 +0100'
published: true
title: 'Faster than Lightning: July’s Developer Event'
authors:
  - Neil van Beinum
tags:
  - Culture
  - Innovation
  - Rails
main_image: >-
  http://i1291.photobucket.com/albums/b548/grammccram/425768e3-f9c7-4f84-bfa2-ada2a5ecdcb4_zpspacxcs2i.png
---
We regularly host “Faster than Lightning” code talks where our developers get together and submit a snippet of code that they found interesting - Ruby, CSS, JS, test code, server config or anything else. It’s an opportunity to learn a little about what each other have up to and have been thinking about, with the code as a talking point.<br/>

![Unboxed Ruby on Rails developer event](http://i1291.photobucket.com/albums/b548/grammccram/425768e3-f9c7-4f84-bfa2-ada2a5ecdcb4_zpspacxcs2i.png)

Here’s a selection of the submissions from this month:<br/>
<br/>

## [Chris C](www.unboxed.co/people/#chris-carter)

Recently, I had the chance to play with the [Parslet](https://github.com/kschiess/parslet/) gem. It's great for expressing some kind of grammar or format without getting lost in a sea of nameless regular expressions. I used it for parsing the output of clauses from [Clingo](https://github.com/potassco/clingo), a "grounder and solver for logic programs". As you can see, each matched expression can be given a name, and is then built into higher level expressions. A simple Hash is returned to represent the structure of the matched expressions.<br/>

```
require "parslet"

module Clingo
  module Result
    class ClauseParser < Parslet::Parser
      rule(:lower)    { match("[a-z]") }
      rule(:upper)    { match("[A-Z]") }
      rule(:letter)   { lower | upper }
      rule(:num)      { match"[0-9]" }
      rule(:us)       { str("_") }
      rule(:comma)    { str(",") >> space? }
      rule(:dbl_qt)   { str('"') }
      rule(:wordchar) { letter | num | us }

      rule(:space)    { match("\s").repeat(1) }
      rule(:space?)   { space.maybe }

      rule(:lparen)   { str("(") >> space? }
      rule(:rparen)   { str(")") >> space? }

      rule(:string)   { dbl_qt >> (space | wordchar).repeat >> dbl_qt }
      rule(:ident)    { lower >> wordchar.repeat >> space? }
      rule(:int)      { num.repeat(1) >> space? }

      rule(:arg)      { func.as(:func) | string.as(:string) | ident.as(:ident) | int.as(:int) }
      rule(:args)     { arg >> (comma >> arg).repeat }
      rule(:func)     { ident.as(:name) >> lparen >> args.repeat(0,1).as(:args) >> rparen }

      rule(:clause)   { space? | func.as(:func) | ident.as(:ident) }

      root :clause
    end
  end
end
```

<br/>
## Cale T

This line of code is from a project where I needed to display a randomly selected quote. Currently the database has about 3 quotes, so randomly ordering doesn't take long but if I were to scale this database and have, say, 1,000 quotes or more, this could take a considerable amount of computation. For now, this seems to be the easiest way to get a random object from a database but let's hope my application never gets particularly large as this line could increase the time it takes to load the app for users.<br/>

```
@quote = Quote.order("RANDOM()").first
```

<br/>
## [Andrew W](www.unboxed.co/people/#andrew-white)

The standard way of running tasks at a particular time of day is to use [cron][1] but on the Petitions website we often need to scale up our number of background workers when  we're busy or sending large amounts of email. This results in multiple cron jobs running at the same time which is less than ideal. To deal with this on Petitions we've created a Task model that uses the database as a shared lock so that only one cron job is created. This means that we don't have to have a 'special' server and gives use extra redundancy.<br/>

The code itself is pretty simple - it tries to obtain a row lock on the task record and when it does it checks the timestamp to see whether it has run recently. If it hasn't then it executes the block passed to run and updates the timestamp.<br/>

[1]: https://en.wikipedia.org/wiki/Cron

```
class Task < ActiveRecord::Base
  class << self
    def run(name, period = 12.hours, &block)
      task_for(name).send(:run, period, &block)
    end

    private

    def task_for(name)
      begin
        find_or_create_by!(name: name)
      rescue ActiveRecord::RecordNotUnique => e
        retry
      end
    end
  end

  private

  def run(period = 12.hours, &block)
    with_lock do
      if pending?(period)
        block.call
        touch
      end
    end
  end

  def pending?(period)
    created_at == updated_at || updated_at < period.ago
  end
end

Task.run('my_task') { MyTask.perform_later }
```

<br/>
## [Andrew W](www.unboxed.co/people/#andrew-white)

When we deploy a new version of the Petitions website we do it in such a way that the user doesn't notice by removing one server at a time from the load balancer and then updating it before adding it back. This means we need to be careful that database migrations leave the database in a state that works with both the old and new versions of the application.<br/>

The new prepared statement caching makes things a little tricky in this regard because PostgreSQL will reference the old schema information in the prepared query making it unusable. This problem is mostly handled internally by Active Record but when it involves transactions it can't make that decision for you and so you need to handle those situations manually. The main place this happens in Petitions is when were locking signature rows so we implemented a method that clears the connection cache and retries the block of code. We also add a check to make sure that it's only retried the once - if it does then something else must be happening so we re-raise the exception.<br/>

```
def retry_lock
  retried = false

  begin
    with_lock { yield }
  rescue PG::InFailedSqlTransaction => e
    if retried
      raise e
    else
      retried = true
      self.class.connection.clear_cache!
      retry
    end
  end
end
```

<br/>
## [Neil van B](www.unboxed.co/people/#neil-van-beinum)

A small snippet from me this month. I’ve recently been working on a project that uses minitest as its testing framework. At Unboxed we favour the use of rspec, so it’s taken me a while to get used to this framework. I prefer rspec as I think its methods are more readable.<br/>

```
test "should not be destroyable when it has members" do
    group = create(:group, members: [create(:person)])
    refute group.destroyable?
    refute group.destroy
  end
```
