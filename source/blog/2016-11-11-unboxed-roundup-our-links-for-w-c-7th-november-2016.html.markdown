---
weekly_roundup: true
title: 'Unboxed Roundup: Our links for w/c 7th November 2016'
date: '2016-11-11 14:30:00 UTC'
authors:
  - 'Murray Steele'
tags: # (Delete as appropriate)
- Culture

---

## Rails Docker App Deployment on Kubernetes - [Charlie E](/team#charlie-egan)

http://www.eggie5.com/82-rails-docker-app-deployment-kubernetes

I went through a this on an innovation day a few weeks ago but never wrote it
up. If you're interested in running a containerized Rails app in a mock
production setup then this is one way to do it. The [previous
post](http://www.eggie5.com/81-rails-docker-app) has a Docker development
Rails quick start guide.

## How to Create Postgres Indexes Concurrently in ActiveRecord Migrations - [Chris H](/team#chris-holmes)

https://robots.thoughtbot.com/how-to-create-postgres-indexes-concurrently-in

This week I came across a migration that used the Postgres concurrency option
when creating an index. Useful for indexing large tables without downtime as it
doesn't prevent concurrent inserts, updates or deletes on the table.

## DynamicClass, A faster replacement for OpenStruct - [Andrew W](/team#andrew-white)

https://github.com/amcaplan/dynamic_class

Often the OpenStruct library is used to consume APIs so that you can access
responses using dot notation but that comes at a high price since every time you
fetch an object it recreates the accessor on the instance's singleton class. If
your API is stable then a better alternative is to use DynamicClass, which
creates the accessor method on the class instead, meaning that future instances
will be as fast as if you manually created the methods. One important caveat -
don't use it with arbitrary user params as it will open your app up to a DoS
attack by constantly creating new methods.

## Building a networking stack in ruby - [Murray S](/team#murray-steele)

https://medium.com/geckoboard-under-the-hood/how-to-build-a-network-stack-in-ruby-f73aeb1b661b

This is an article on how the networking stack works, starting with the
sockets library and going down from there.  It's all explained with ruby code
you can use yourself to understand the raw bytes being sent over your network.
I really enjoyed the article for it's deep-dive, but also for the neat tricks
Daniel uses to do the low-level byte processing you need for network
programming.  I forget that ruby has these features as I'm usually working at a
much higher level and don't worry about bytes much, so it's nice to be reminded
that I can work further down the stack in my favourite language.

## Track of the Week - [Sarah B](/team#sarah-beck)

In order to improve this weeks mood, and to celebrate Gram and I going on
holiday (separately) I think this is appropriate:

<iframe width="560" height="315" src="https://www.youtube.com/embed/5Rswx2Z7SDw" frameborder="0" allowfullscreen></iframe>

[Madonna - Holiday](https://www.youtube.com/watch?v=5Rswx2Z7SDw)

