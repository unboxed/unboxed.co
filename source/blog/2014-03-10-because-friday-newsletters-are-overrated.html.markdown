---
weekly_roundup: true
date: "2014-03-10 07:21:00 UTC"
published: true
title: "Because Friday newsletters are overrated"
author: "Richard Archer"

---

## I’ve been ``git``-ing it wrong! - [Murray Steele](https://www.unboxedconsulting.com/people/murray-steele)

I was helping someone on my team prepare a deploy recently and noticed they tagged the release with ``git -a tag <sha> -m “tagging for release”``.  I was mostly confused by the ``-m``, as I didn’t know you could add a message to a tag, but I couldn’t recall seeing the ``-a`` either.  I did some research, and it turns out [I’ve been creating lightweight tags](http://www.rockstarprogrammer.org/post/2008/oct/16/git-tag-does-wrong-thing-default/) all along.  How embarrassing!

## Plain Javascript - [Murray Steele](http://www.unboxedconsulting.com/people/murray-steele)

There’s definitely a push back on using jQuery for everything in JS.  I’ve been aware of the idea, but I’ve never really thought about it much, so found [this article about plain javascript alternatives to jQuery methods](http://blog.adtile.me/2014/01/16/a-dive-into-plain-javascript/) really useful.  New DOM APIs are supported in most modern browsers, but of course, modern browsers aren’t the problem.  Libraries like jQuery provide standard APIs and polyfills for old browsers too, but if we use a site like [Can I Use](http://caniuse.com/) we can find out the full range of browsers that support an API and can decide if we want the overhead of using jQuery or not for a particular project.

## On stupid classes - [Murray Steele](http://www.unboxedconsulting.com/people/murray-steele)

I can’t remember how I found [this article about controller patterns and stupid classes](http://me.veekun.com/blog/2013/03/03/the-controller-pattern-is-awful-and-other-oo-heresy/), but the arguments about object design, and MVC controllers in particular, are very interesting.  Some of the stuff is particular to Python (e.g. method annotations, which we don’t have in Ruby, although there’s [plenty of discussion if you’re interested](https://www.google.co.uk/search?q=ruby+method+annotations)), but the main point is that objects should have state and behaviour and from that you can talk about what they are.  Controllers are stupid classes because they’re don’t really represent anything other than the mechanics of MVC.  My *tl;dr* isn’t very good, so you should just read it.

## Ruby implementation of Bitcoin - [Henry Turner](http://www.unboxedconsulting.com/people/henry-turner)

It’s just a Gist… But it’s a Ruby implementation of [Bitcoin’s proof of work concept](https://gist.github.com/thehenster/9368139). Proof of work is what Bitcoin is based on and mining is often described as ‘solving mathematical problems’ when it’s little more than a coin toss.

## ECMAScript 6 Roundup - Gavin van Lelyveld

"[This standard is targetting ratification in December 2014](https://github.com/lukehoban/es6features). ES6 is a significant update to the language, and the first update to the language since ES5 was standardized in 2009"

## Git automation - Gavin van Lelyveld

Cape Town newbie Gavin is a big fan of automation - so much so he's decided to educate us all in configuring our git configs to make the default behaviours work betterer.

* [Configuring the default behaviour of ```git push```](http://stackoverflow.com/questions/948354/git-push-default-behavior/948397#948397)
* [Always be ``git fetch --prune``-ing](http://stackoverflow.com/questions/18308535/automatic-prune-with-git-fetch-or-pull/18718936#18718936)

## Things I learned when stuff went wrong - [Sven Agnew](http://www.unboxedconsulting.com/people/sven-agnew)

We recently had a sprint which was very heavy on system administration and command line work as opposed to development work and I thought I'd share a few of the links I hit during my frantic Googling in the face of downtime clock increments.

### Tools to test load

We used [the excellent httperf](https://www.hospitalrecords.com/shop/release/various-artists/nhs243-hospital-we-are-18) to pre-test load management on  a web cluster by replaying production nginx log file data with various concurrency and step-increment models.

The vast and powerful [Apache Jmeter](https://jmeter.apache.org) is a massive multi-protocol load and performance testing application. Not good for emergencies. Excellent for planning and research.

### Tools to debug with

Spelunking into 3rd-party libraries and system code is impossible without a solid understanding of [this ubiquitous tool](http://sourceware.org/gdb/onlinedocs/gdb/Running.html#Running). Probably you won't need to use it often. When you do, you _really_ do.

The [Enterprise version of Passenger](http://vimeo.com/45923773) has some debugging and resource management facilities which really make digging into live code much simpler. In the case of a production system, that alone is probably worth the license fee.

### Tools to stay focussed with

[Hospital Records](https://www.hospitalrecords.com/shop/release/hospital-records/nhs243-hospital-we-are-18) - simply brilliant Drum n Bass to while away those 8pm debugging sessions ;)


