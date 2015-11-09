---
weekly_roundup: true
date: "2015-01-30 14:30:00 UTC"
published: true
title: "Unboxed Roundup: our links for w/c 26th January 2015"
author: "Murray Steele"
tags:
  - Culture
---

## Intro to ReactJS - [Paula](http://www.unboxedconsulting.com/people/paula-stepinska)

http://www.jackcallister.com/2015/01/05/the-react-quick-start-guide.html

Quick and practical introduction to ReactJS including essential description of fundamental concepts and techniques of Facebook JavaScript library for building user interfaces (http://facebook.github.io/react/).

## The Internet Archive - [Murray](http://www.unboxedconsulting.com/people/murray-steele)

http://www.newyorker.com/magazine/2015/01/26/cobweb

An interesting article about [The Internet Archive](https://archive.org/).  The task they are undertaking is almost impossible and yet clearly worthwhile.  There's a well believed notion that "the internet never forgets" but reality is probably much different as we learn from this article: services get shut down and content moves around all the time.  As developers we need to make sure we remember that [Cool URIs don't change](http://www.w3.org/Provider/Style/URI.html), and in particular as rails developers this means making liberal use of [redirect routes](http://api.rubyonrails.org/classes/ActionDispatch/Routing/Redirection.html) when we can't avoid changing URLs in our applications.

## Tuning ruby method cache performance - [Murray](http://www.unboxedconsulting.com/people/murray-steele)

http://www.shopify.com/technology/16777156-tuning-rubys-global-method-cache

This article reminds me of [Aaron Patterson](http://twitter.com/tenderlove)'s article about [profiling rails startup](http://tenderlovemaking.com/2011/12/05/profiling-rails-startup-with-dtrace.html) from a while back.  Both go deep into using memory profiling tools to work out the solution to a performance problem, which is an approach I'd probably never reach for without being prompted to (but clearly I should).  What I particularly like about this article is that a deep-dive by [Scott Francis at Shopify](https://twitter.com/planetscott) ends up with a patch to ruby that helps all of us.  Thanks Scott!

## Rails as an SOA Client - [Patrick](http://www.unboxedconsulting.com/people/patrick-vine)

The Ruby Rogues talk to Pete Hodgson about his RailsConf2014 talk (https://speakerdeck.com/phodgson/railsconf2014) on Rails as an SOA Client - http://devchat.tv/ruby-rogues/176-rr-rails-as-an-soa-client-with-pete-hodgson.  They talk about a bunch of things that are interesting to those that want to build software with services.  There is a good conversation around testing, contract testing, building fakes, etc.  There is a good conversation about using Faraday to provide the equivalent of Rack middleware for client HTTP calls.  There are several interesting ideas raised that are all worth pondering and experimenting in.

## Micro services interview - [Patrick](http://www.unboxedconsulting.com/people/patrick-vine)

In http://www.se-radio.net/2014/10/episode-213-james-lewis-on-microservices/, Software Engineering Radio has an informative interview with James Lewis about micro services.  James Lewis co-authored the micro services article at http://martinfowler.com/articles/microservices.html.  The conversation ranges from definitions (or the lack thereof) to different ideas and how they scale or where the problems get shifted to.  Should the UI live with the service? Should there be a UI layer pull the services together?  And lots of other interesting discussions.

## Track of the Week - [Pedro](http://www.unboxedconsulting.com/people/pedro-moreira)

Choosing a single track is a pretty difficult exercise for me. If you’ve seen/read “High Fidelity”: yeah, it does escalate to epic proportions. After much looking at playlists on my phone, played stats on Rdio and iTunes, I just went with the one track I played through to the end while trying to choose. In the end it came down to Zola Jesus or Sleater-Kinney, that have a new album out - which is great news, since I feel we need their voice and attitude to shed light on the current zeitgeist. Anyway, here is Zola Jesus. Have a great weekend!

<iframe src="//player.vimeo.com/video/30014047" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

[Zola Jesus - Vessel](http://vimeo.com/30014047) from [Souterrain Transmissions](http://vimeo.com/stransmissions) on [Vimeo](https://vimeo.com).
