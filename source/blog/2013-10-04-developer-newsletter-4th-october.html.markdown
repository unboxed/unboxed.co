---
layout: "blog"
weekly_roundup: true
date: "2013-10-04 11:59:00 UTC"
published: true
title: "Developer Newsletter, 4th October"
author: "Wilhelm Kirschbaum"
tags:
  - Rails
  - Agile
  - Lean
---

## High speed deploys using Git - [Andy M](http://www.unboxedconsulting.com/people/andrew-mitchell)
[http://blog.codeclimate.com/blog/2013/10/02/high-speed-rails-deploys-with-git/](http://blog.codeclimate.com/blog/2013/10/02/high-speed-rails-deploys-with-git/)

This article covers some of the ways in which we can use Git to speeed up our deploy. It talks about Capistrano's design before the days of Git and has some interesting points. I have noticed on some projects are deploys sometimes take anything up to 15 minutes on certain projects. It's time to stop wasting time watching capistrano outputs and spend more time coding!


## Why Ruby? - [Andy M](http://www.unboxedconsulting.com/people/andrew-mitchell)
[http://www.codinghorror.com/blog/2013/03/why-ruby.html](http://www.codinghorror.com/blog/2013/03/why-ruby.html)

I have heard a couple of people asking why use ruby over other languages recently (or why rails). I don't agree with every point here but some of the points are really well made.

## Collaborative audio online - [Andy M](http://www.unboxedconsulting.com/people/andrew-mitchell)
[http://open.bekk.no/making-a-collaborative-piano-using-functional-reactive-programming-frp](http://open.bekk.no/making-a-collaborative-piano-using-functional-reactive-programming-frp)

As I am sure some people have seen I'm big into my music and online music collaboration. Check this out… its pretty cool. It kind of discusses some similar ideas to my [sound-wav.es](http://www.sound-wav.es) collaborative sequencer idea but it's a bit of a different take!

## Absurd.js - Writing CSS in JavaScript - Veronika H
[http://davidwalsh.name/write-css-javascript](http://davidwalsh.name/write-css-javascript)

Krasimir Tsonev loves JS so much he wrote absurd.js, a module which lets him write his CSS in node.js modules and then converts it into CSS via JSON objects. Absurd.js has a few nice features like more efficient overrides and combining of selectors, which make the css output look and potentially perform better. It's also flexible in the way you can nest mixing. However, the source looks pretty messy as quotes are required around some selectors and properties, so it's not great for readability.

## When is uniq not unique? - Matt P
[http://chrisholtz.com/blog/more-than-you-care-to-know-about-the-uniq-method/](http://chrisholtz.com/blog/more-than-you-care-to-know-about-the-uniq-method/)

Did you know that Array#uniq can take a block? Why might you want to invent your own test of uniqueness? The author of this article doesn't know, but nevertheless it's a fun idea to explore.

## Rubyists love DSLs - Matt P
Sometimes it can seem like Ruby has a DSL for everything. [Regularity](https://github.com/andrewberls/regularity
) is a DSL for regular expressions. I personally prefer the standard form but I can see the uses for a DSL. Perhaps you prefer the more declarative nature, or perhaps they're useful for pedagogical purposes for newcomers to programming who may not have encountered regular expressions before. Whatever your thoughts, more details can be found on the github project page at [https://github.com/andrewberls/regularity](https://github.com/andrewberls/regularity)

## Thinking with Clojure - Sven A
[http://www.youtube.com/watch?v=f84n5oFoZBc](http://www.youtube.com/watch?v=f84n5oFoZBc)

A recent Clojure talk by Rich Hickey about the value of thinking.
