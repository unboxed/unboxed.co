---
layout: "blog"
date: "2014-08-01 13:30:00 UTC"
published: true
title: "The dev o' nine tails"
author: "Murray Steele"
tags:
  - Rails
---

## Monoliths vs. microservices - [Murray](http://www.unboxedconsulting.com/people/murray-steele)

http://highscalability.com/blog/2014/7/28/the-great-microservices-vs-monolithic-apps-twitter-melee.html

The prevalent opinion about system architecture seems to be that monolithic applications are bad and using lots of loosely coupled microservices is good.  I've never really questioned this opinion, so I found it useful that this article covers both sides of the argument.  It starts by summarising a debate from twitter (surprisingly civil and useful, despite the 140-char replies) and then goes into greater detail on the topic.  There's loads of related reading at the end too.  As with all things, it really seems that the answer is "it depends".

## Benchmarking Ruby Frameworks - [Murray](http://www.unboxedconsulting.com/murray-steele)

http://www.madebymarket.com/blog/dev/ruby-web-benchmark-report.html

This is an incredibly detailed comparison of benchmarking a simple "hello world" application across a matrix of ruby implementation, app server and web framework.  The results are, on the face of it, not that interesting: jruby is fast, WEBrick shouldn't be used in production, Rails is slower than using raw Rack.  However, what I did find interesting is that the "classic" deployment stack of MRI Ruby and Passenger is probably one of the least performant ways of deploying a rails app.  The good news is that if you are using that stack and the app is not performing as you'd like, you'll get a reasonable improvement just by switching to app server, and a further improvement if you can switch to using jRuby and Torquebox 4.  No hard thinking required!  Of course, if you're already using that stack and it's still not performant enough then it's time to break out [DTrace and do some science!](http://tenderlovemaking.com/2011/12/05/profiling-rails-startup-with-dtrace.html)
