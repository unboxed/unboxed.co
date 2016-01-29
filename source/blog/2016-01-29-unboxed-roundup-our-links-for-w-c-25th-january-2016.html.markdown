---
weekly_roundup: true
title: 'Unboxed Roundup: Our links for w/c 25th January 2016'
date: '2016-01-29 14:30:00 UTC'
author: 'Murray Steele'
tags: # (Delete as appropriate)
- Culture

---

## Postgres Query Plan Visualization - [Andrew W](/people#andrew-white)

http://tatiyants.com/postgres-query-plan-visualization/

Ever wondered what those weird numbers are when you're trying work out why your SQL query performance is so bad and you do "EXPLAIN SELECT ...". Well, wonder no more because Alex Tatiyants has written a Postgres EXPLAIN Visualizer (PEV) that will take the output from the EXPLAIN command and turn it into a human legible diagram so that mere database mortals can see what's happening to their query.

## Thinking about technical debt differently - [Murray S](/people#murray-steele)

http://laughingmeme.org/2016/01/10/towards-an-understanding-of-technical-debt/

We talk about technical debt a lot, but there's no clear understanding across our industry of what we mean.  We all know it's something bad, but we can mean lots of differnt things that require different approaches to mitigate or remove.  This article goes into what we really mean when we use those words and explores the different meanings.  The closing paragraph has a really good point too, about not getting too hung up on the choices we make right now:

>  All code is technical debt. All code is, to varying degrees, an incorrect bet on what the future will look like.

So true.

## Tidy test setups with Factory Girl - [Neil v B](/people#neil-van-beinum)

http://cookieshq.co.uk/posts/useful-factory-girl-methods/

I was interested to read about some more advanced uses of Factory Girl that are outlined here. I've only really used the basics - defining a factory and then creating objects from those factories in test setups. This article describes how you can use the `trait` concept to extend your factories.

## NakayoshiFork gem for Copu-on-Write in Ruby 2.2+ - [Andrew W](/people#andrew-white)

https://github.com/ko1/nakayoshi_fork

Changes in Ruby 2.2 and later to the generational garbage collection algorithm means that new objects that are promoted to old objects end up marking their memory pages as dirty. So when the process is forked (e.g. a new unicorn process to process HTTP requests) and a GC run occurs afterwards it can end up copying memory needlessly, resulting in process memory bloat. The NakayoshiFork gem fixes this by patching the `fork` method to ensure that all new objects are promoted to old objects first before the actual fork takes place.

## Track of the Week - [](/people#)

