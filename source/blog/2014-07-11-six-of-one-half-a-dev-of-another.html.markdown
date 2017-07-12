---
weekly_roundup: true
date: "2014-07-11 14:10:00 UTC"
published: true
title: "Six of one, half a dev of another"
authors:
  - "Murray Steele"
tags:
  - Rails
---

## Internal Hackdays - [Murray](/people#murray-steele)

https://about.futurelearn.com/blog/run-internal-hackday/

[Melinda Seckington](http://missgeeky.com/) writes on the Future Learn blog about their recent internal hackday and gives some tips about how to run your own one.  We ran an [internal hack day at ubxd](https://twitter.com/search?f=realtime&q=%23ubxdhack%20OR%20%23ubxdhackday) earlier this year, and these tips will be great for when we run another.

## Temporary code - [Murray](/people#murray-steele)

http://chrismdp.com/2014/07/how-not-to-check-in-temporary-code/

This short article from [Chris Parsons](http://chrismdp.com) serves as a great reminder of the benefits of the [extract method refactoring](http://refactoring.com/catalog/extractMethod.html).  Sometimes it feels like running refactorings is just a _Thing You Must Do_, even if just to keep your code tidy.  But it can have other benefits; for Chris Parsons it helped him identifying code that he's just messing about with that's not really meant to be committed, but for [Chris Zetter](http://chriszetter.com/) it's all about [making feature specs easier to read](https://about.futurelearn.com/blog/how-we-write-readable-feature-tests-with-rspec/).

## Ruby's Encoding comment - [Murray](/people#murray-steele)

Our very own Karl Entwistle became [rails latest contributor yesterday](https://github.com/rails/rails/pull/16123).  While reading his submission I spotted that he'd marked his test as utf-8 with the following comment:

    # coding: utf-8

I'd always thought it had to be:

    # encoding: utf-8

So I did some digging, and thanks to [this article by James Edward Gray III about ruby 1.9's encoding comments](http://graysoftinc.com/character-encodings/ruby-19s-three-default-encodings) I found out that it's not that strict at all.  As long as ``coding: <your encoding>`` is present in a comment near the top of the file, it'll work.

Further proof that you can always learn something from any bit of code you read.

