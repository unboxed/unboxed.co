---
layout: "blog"
date: "2012-10-01 10:22:00 UTC"
published: true
title: "Newsletter, 1st October"
author: "Attila Gyorffy"
tags:
  - Rails
---

This week the newsletter has been slightly delayed due to other slightly more important assignments. Sorry about that. Anyway, as they say it's better late then never, so here we go.

#Great little-used features in Rails

[Jörg](http://www.unboxedconsulting.com/people/joerg-diekmann) mentions some [great little-used features in Rails](http://blog.mitchcrowe.com/blog/2012/04/14/10-most-underused-activerecord-relation-methods). Some of them are only really applicable to Rails 4 - but there are some good ones there that we can already use, especially the `first_or_create` and `first_or_initialize` methods in `ActiveRecord`. I think it's definitely worth having a look at these.

#Things that are sick and wrong

[Matt P](http://www.unboxedconsulting.com/people/matt-peperell) is apparently a fan of things that are sick and wrong, but don't worry: in a work-safe way. Here's a couple of his recent finds:

* A Real Time communication library [using Animated Gifs As a Transport](http://github.com/videlalvaro/gifsockets)™. GifSockets! This can come handy when WebSockets are not an option, for example in old browsers. And Internet Explorer too.
* A [PHP abstraction layer in Python](http://code.google.com/p/php-py/source/browse/trunk/src/php/php.py).

#Pivotal in Chrome

About two weeks ago I found out about [Pivotal Booster](http://pivotalbooster.com/) that is being advertised as the best Pivotal Tracker client for Mac OS X. This week [Elizabeth](http://www.unboxedconsulting.com/people/elizabeth-curson) has submitted yet another tool for Agile and Scrum lovers:

There's a [Chrome extension](http://chrome.google.com/webstore/detail/iegbkljacgfochoondhgibofiijnedjd) that lets you view Pivotal Tracker stories in a taskboard layout. Not good for much other than a top level overview of where things are in the current sprint since the cards aren't interactive, but certainly OK for using at Stand up for projects without a physical board.

#Run the right tests at the right time

[Murray](http://www.unboxedconsulting.com/people/murray-steele) wants you to read [Run the right tests at the right time](http://www.songkick.com/devblog/2012/09/27/run-the-right-tests-at-the-right-time/). It's an article from the generally excellent [Songkick developer blog](http://www.songkick.com/devblog/) about testing the right things at the right time. The basic gist is that they don't have automated tests for things that they wouldn't care if it was broken and they shipped. They have other post-deploy tools to catch the breaks and help them prioritise fixes. I don't know how much of this is applicable to the work you do in case you are not in the position of…

* Working constantly on a project for a long period of time,
Necessarily being able to setup those "post-deploy" tools that would require attention once you might have left the client,
* Set up with continuous deployment, you still pretty much deploy at the end of an iteration.

Still I think it's interesting, maybe on some projects where you have a longer term engagement it might be worth pruning the build, or having 2 builds - the core / current features build and the everything build.

#Upside-Down-Ternet

Your neighbours are stealing your wireless internet access? What? Well, before you would fire up your router administration UI to change your wifi password, you might think twice and [troll the thieves for a little bit](http://www.ex-parrot.com/pete/upside-down-ternet.html). Go on and read a bit. It's brilliant. Thanks to [Matt](http://www.unboxedconsulting.com/people/matt-frank) for sending this in. (Also, credit needs to go to [@TomBeresfordUK](http://twitter.com/TomBeresfordUK) whom he found this via.)

#ActiveSupport "method" of the week: OrderedHash

We occassionally talk about useful methods that live in ActiveSupport. This week I decided to pick a whole class. We've talked about little or less known features of Rails that are less known to people because they are usually limited to internals of the framework. This does not mean though that you cannot make good use of them in anywhere else in a Rails project. This week I'd like to have your attention on [`ActiveSupport::OrderedHash`](http://rubydoc.info/docs/rails/ActiveSupport/OrderedHash).

It is a subclass of Array but it preserves the means of hash access, as well as the keys and values methods:

    oh = ActiveSupport::OrderedHash.new
    oh[:a] = 1
    oh[:b] = 2
    oh.keys # => [:a, :b], this order is guaranteed


Funnily enough as far as I know this is not used in many places in the Rails internals but can come very useful when you code. Think about it when you need to enforce persisted sorting on a hash.

One thing to note, though: Hashes are ordered by default in Ruby 1.9. This means with the future release of Rails 4 this class is very likely to disappear given that Rails 4 will drop Ruby 1.8 support.
