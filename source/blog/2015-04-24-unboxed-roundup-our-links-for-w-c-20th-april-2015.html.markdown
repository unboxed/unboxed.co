---
layout: "blog"
weekly_roundup: true
date: "2015-04-24 13:30:00 UTC"
published: true
title: "Unboxed Roundup: our links for w/c 20th April 2015"
author: "Murray Steele"
tags:
  - Culture
---

## Speeding up the front-end - [Murray S](http://www.unboxedconsulting.com/people/murray-steele)

http://viget.com/extend/rails-front-end-performance

My specialism is in building out the backend software and the rules for how you cut out bottlenecks and improve performance haven't really changed that much.  We might use different tools and languages, but it's still the same; remove as much processing as possible from the request/response cycle, put indexes on your database, don't write infinite loops.  This article on the other hand goes into detail about how to speed up the front-end.  It's not talking about how to avoid infinite loops in your JS, but in how to get the webpage to render and respond to user input as soon as possible.  This kind of advice seems to change rapidly and sometimes what was a good idea (condense everything into a single large gzipped asset file with inlined data-uris) isn't such a great idea anymore (you're blocking rendering) so it's good to be refreshed on what the current state of play is.

## New version of gitlab - [Tom R](http://www.tomrussell.co.uk/)

In case it's flown under your radar like it's flown under mine, GitLab has had a major UI revamp recently with version 7.9 (released in March).

This contains loads of awesome features, and you should read the blog post at https://about.gitlab.com/2015/03/22/gitlab-7-9-released/ describing all of them, but another key inclusion is hidden in the changelog for [GitLab CI](https://about.gitlab.com/gitlab-ci/), the continuous integration tool that pairs nicely with GitLab.

GitLab CI now contains "Deploy Jobs", which are jobs that are triggered on the successful completion of a build. With this change, it's much easier to replace a Jenkins instance (which has historically had very poor integration with GitLab) with a GitLab CI instance, for all your shiny continuous integration needs.

## Everyone has JS - [Murray S](http://www.unboxedconsulting.com/people/murray-steele)

http://kryogenix.org/code/browser/everyonehasjs.html

I've always felt that progressive enhancement is the correct way to build websites: make it work without JS and then layer JS on top to provide a richer experience.  It's fine if the non-JS version isn't as fancy as the JS one, but at least all the visitors to the site can actually use it.  The problem I often have during these discussions is that it sounds like some hoity-toity intellectual argument for correct-ness that doesn't really matter because "everyone has JS, no-one turns it off anymore".  This flow-chart provides good arguments for all the reasons that "everyone has JS" isn't necessarily true.  I'll be keeping this on hand for future discussions to help provide more evidence that progressive enhancement is the right thing to do.

## Track of the Week - [Pawel J.](http://www.unboxedconsulting.com/people/pawel-janiak)

<iframe width="560" height="315" src="https://www.youtube.com/embed/SSZOiq7-3mE" frameborder="0" allowfullscreen></iframe>
["Lost Memory" by Boris Brejcha](https://www.youtube.com/watch?v=SSZOiq7-3mE)
