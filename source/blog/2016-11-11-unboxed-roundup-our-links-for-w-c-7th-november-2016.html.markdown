---
weekly_roundup: true
title: 'Unboxed Roundup: Our links for w/c 7th November 2016'
date: '2016-11-11 14:30:00 UTC'
authors:
  - 'Murray Steele'
tags: # (Delete as appropiate)
- Culture

---

## Rails Docker App Deployment on Kubernetes - [Charlie E](/people#charlie-egan)

http://www.eggie5.com/82-rails-docker-app-deployment-kubernetes

I went through a this on an innovation day a few weeks ago but never wrote it
up. If you're interested in running a containerized Rails app in a mock
production setup then this is one way to do it. The [previous
post](http://www.eggie5.com/81-rails-docker-app) has a Docker development
Rails quick start guide.

## How to Create Postgres Indexes Concurrently in ActiveRecord Migrations - [Chris H](/people#chris-holmes)

https://robots.thoughtbot.com/how-to-create-postgres-indexes-concurrently-in

This week I came across a migration that used the Postgres concurrency option
when creating an index. Useful for indexing large tables without downtime as it
doesn't prevent concurrent inserts, updates or deletes on the table.

## DynamicClass, A faster replacement for OpenStruct - [Andrew W](/people#andrew-white)

https://github.com/amcaplan/dynamic_class

Often the OpenStruct library is used to consume APIs so that you can access
responses using dot notation but that comes at a high price since every time you
fetch an object it recreates the accessor on the instance's singleton class. If
your API is stable then a better alternative is to use DynamicClass, which
creates the accessor method on the class instead, meaning that future instances
will be as fast as if you manually created the methods. One important caveat -
don't use it with arbitrary user params as it will open your app up to a DoS
attack by constantly creating new methods.

## Track of the Week - [](/people#)

