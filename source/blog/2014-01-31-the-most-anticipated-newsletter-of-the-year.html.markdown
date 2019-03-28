---
weekly_roundup: true
date: "2014-01-31 13:55:00 UTC"
published: true
title: "The most anticipated newsletter of the year"
authors:
  - "Karl Entwistle"
tags:
  - Rails
---

## Teaching TDD - [Murray](/people#murray-steele)
[Justin Searls](https://twitter.com/searls) writes up [why he is changing how he teaches TDD](http://blog.testdouble.com/posts/2014-01-25-the-failures-of-intro-to-tdd.html).  Of course, it's not just about teaching TDD, but a nuanced discussion of the benefits of TDD.  It's good to have a refresher on this stuff, and I particularly liked the discussion of the testing pitfalls around applying classic extract-* refactorings.

## Progressive Enhancement - [Murray](/people#murray-steele)
Progressive Enhancement is an approach to building websites that seems to flit in and out of popularity every couple of years.  Right now it seems like it's popularity is waning and [Drew McLellan's](https://twitter.com/drewm) recent article ["Why is progressive enhancement so upopular?"](http://allinthehead.com/retro/367/why-is-progressive-enhancement-so-unpopular) tries to reverse that trend.  For me, the crucial thing to remember is that "javascript-disabled" isn't always a choice a user makes; there are loads of other reasons (performance, network problems, weird proxy servers, &c) that mean that javascript is on, but the javascript you wrote is not delivered to or run on the client.
