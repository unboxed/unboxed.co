---
weekly_roundup: true
date: "2013-06-21 13:45:00 UTC"
published: true
title: "All this has happened before, and all this will happen again"
author: "Murray Steele"
tags:
  - Rails
  - Agile
  - Lean
---

## Understanding 3D Transforms - [Carl](/people/carl-whittaker)
[http://dev.opera.com/articles/view/understanding-3d-transforms/](http://dev.opera.com/articles/view/understanding-3d-transforms/)

A nifty primer on transforms in CSS.  It explains how transforms are cumulative and how to adjust perspective in a straightforward manner.  Matrices still melt my face.

## New HTML5 Template element - [Andy](/people/andrew-mitchell)
[http://www.w3.org/html/wg/drafts/html/master/templating.html](http://www.w3.org/html/wg/drafts/html/master/templating.html)

From the W3 blurb: The template element can be placed anywhere within the head, body, and frameset elements, and its contents be any content which could otherwise occur at any location within the head, body, and frameset elements.  The content of templates are not a part of the document (they do not display, are not matched by querySelector, etc.) and are inactive (e.g. do not cause resources to load, scripts to run, media to play, etc.)… handy!

## Search engine optimisation support for your JS heavy app - [Andy](/people/andrew-mitchell)
[http://eviltrout.com/2013/06/19/adding-support-for-search-engines-to-your-javascript-applications.html](http://eviltrout.com/2013/06/19/adding-support-for-search-engines-to-your-javascript-applications.html)

This is an interesting take on how to make javascript heavy client side applications better optimized for search engines.

## Building Rails APIs - [Lee](/people/lee-richmond)

Part 1 of a series of blog posts from [Collective Idea](http://collectiveidea.com/), providing some tips for [building good APIs in Rails](http://collectiveidea.com/blog/archives/2013/06/13/building-awesome-rails-apis-part-1/)

## Academic research into pair programming - [Murray](/people/murray-steele)
[http://salfreudenberg.wordpress.com/](http://salfreudenberg.wordpress.com/)

A lot of our industry "best practices" seem to be built around anecdote (and as we all know [the plural of anecdote is not data](http://en.wikipedia.org/wiki/Anecdotal_evidence)) so it's good to read some actual studies with real measured data around this sort of thing.  There's only a couple of blog posts so far, linking to published papers, but I'm hopeful for more.

## Nobody understands the GIL - [Murray](/people/murray-steele)

A series of blog posts by [Jesse Storimer](http://www.jstorimer.com/) about the GIL (Global Interpreter Lock) in Ruby.  Specifically we're talking about MRI Ruby as neither JRuby nor Rubinius have one.  Published so far are [part 1](http://www.jstorimer.com/blogs/workingwithcode/8085491-nobody-understands-the-gil) where he explains what the GIL is, and [part 2](http://www.jstorimer.com/blogs/workingwithcode/8100871-nobody-understands-the-gil-part-2-implementation) about the MRI implementation.  Part 3, coming soon I hope, promises to explain what the GIL actually means when it comes to thread-safe programming.

## Browser-side handling of markdown - [Matt](/people/matt-peperell)
[http://markdown-here.com/](http://markdown-here.com/)

Compose in markdown, toggle an option and then have it rendered.

## Mind the gap! - [Matt](/people/matt-peperell)
[http://thelayout.cc/mind-the-gap/](http://thelayout.cc/mind-the-gap/)

An article on discussing the causes of and attempting to minimise the divergence between graphic designs and final implementations.

## Yet another infographic - [Matt](/people/matt-peperell)
[http://visual.ly/history-programming-languages](http://visual.ly/history-programming-languages)

Another infographic visualisation - this one on focussing on some commonly used programming languages.

Be honest: how many of you knew that Ada is 130 years old?

## A "Heads up!" to heroku users - [Matt](/people/matt-peperell)
[https://blog.heroku.com/archives/2013/6/17/ruby-2-default-new-aps](https://blog.heroku.com/archives/2013/6/17/ruby-2-default-new-aps)

As of Tuesday, the wellknown Rails-friendly cloud service now defaults to Ruby version 2 for new deploys.  (Older versions of ruby will be preserved for exisiting apps)
