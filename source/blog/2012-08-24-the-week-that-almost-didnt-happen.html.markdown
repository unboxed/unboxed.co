---
weekly_roundup: true
date: "2012-08-24 15:10:00 UTC"
published: true
title: "The week that almost didn't happen"
authors:
  - "Tom ten Thij"
tags:
  - Rails
---

##ActiveSupport Method of the Week: [diff](http://api.rubyonrails.org/classes/Hash.html#method-i-diff)

This week just a brief mention of a useful core extension on Hash objects:

    Returns a hash that represents the difference between two hashes.

    Examples:

    {1 => 2}.diff(1 => 2)         # => {}
    {1 => 2}.diff(1 => 3)         # => {1 => 2}
    {}.diff(1 => 2)               # => {1 => 2}
    {1 => 2, 3 => 4}.diff(1 => 2) # => {3 => 4}


##A github use case for a Wikipedia of rap lyrics (Pawel J)
[http://success.heroku.com/rapgenius](http://success.heroku.com/rapgenius)

##Goliath is a non-blocking Ruby web server framework and has just hit 1.0.0 (Lee R)
[https://github.com/postrank-labs/goliath](https://github.com/postrank-labs/goliath)

##Backburner is a simple and reliable beansktalkd job queue for Ruby (Lee R)
[http://nesquena.github.com/backburner/](http://nesquena.github.com/backburner/)

##Checker gem for Ruby & Rails development (Lee R)
[http://pewniak747.info/2012/08/04/Checker-gem-for-ruby-rails-development/](http://pewniak747.info/2012/08/04/Checker-gem-for-ruby-rails-development/)

##Rubular (Matt P)
`Some people, when confronted with a problem, think
“I know, I'll use regular expressions.”   Now they have two problems.`

These words are often [attributed to Jamie Zawinski](http://regex.info/blog/2006-09-15/247), former Netscape programmer. Quips aside, if you're using regular expressions in your Ruby project, there is a useful tool to help with the regular expression side of things:
[http://rubular.com/](http://rubular.com/)

##Corkamix (Matt P)
Yet another file which is valid in multiple formats. This one is interesting compared to the others because it centers around binary file formats rather than plain-text source code. The project is located at
[http://code.google.com/p/corkami/downloads/detail?name=CorkaMIX.zip](http://code.google.com/p/corkami/downloads/detail?name=CorkaMIX.zip)  - it's simultaneously a valid:
 * Windows Portable Executable binary
 * Adobe Reader PDF document
 * Oracle Java JAR (a CLASS inside a ZIP)/Python script
 * HTML page

##Cool code (Murray S)
This video is quite good: [http://vimeo.com/44792649](http://vimeo.com/44792649)

It's the keynote from GeeCON - a Java fringe conference I think, don't worry though as there's not much java in it.  It's really quite a general programmer talk.

The central thesis is that we should read code but not the boring code for libraries and work stuff, but fun code to see just what can be done.  Sort of in the vein of that Beautiful Code book (indeed it's name checked very early on).  Some code examples are historical, some are brain-melting all are interesting.  It's perhaps a bit long-winded at just under an hour in length, but it's pretty easy to dip in and out of as he shows lots of examples.

##Functional composition (Murray S)
Another good video is this: [http://skillsmatter.com/podcast/home/functional-composition](http://skillsmatter.com/podcast/home/functional-composition)

It's a talk about using functional programming (well it is about clojure so what did you expect).  He walks the audience through building up a program that can play some bach.  It's really impressive and along the way you get to learn about harmonics and music and all that.  It is also about an hour long, but it's well worth the time just to see the simple beginnings and how layering the functions on top of each other ends up with a really expressive program all the way from the top to the bottom, and each layer is very small.

##RFC for the 7XX Range of HTTP Status codes - Developer Errors (Matt F)
[Error 748: Confounded by Ponies](https://github.com/joho/7XX-rfc/)

Feliz Carnaval!
