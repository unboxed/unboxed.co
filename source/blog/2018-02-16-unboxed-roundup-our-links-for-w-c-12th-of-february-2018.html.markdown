---
weekly_roundup: true
title: 'Roundup: Making SVGs, monolith advice, JS canvas magic, user 
interview approaches, and deepfakes'
date: '2018-02-16 14:30:00 UTC'
authors:
  - 'Neil van Beinum'
tags: # (Delete as appropriate)
- Culture

---

## Pocket guide to writing SVG - [Henry T](/team#henry-turner)

http://svgpocketguide.com/book/#section-2

I recently needed to create some custom icons that were going to be displayed in a variety of sizes. Handrolling my own SVG wasn't as messy as I expected. It was also pleasantly liberating to not need a graphics package to make an image.

## More advice on monoliths - [Murray S](/team#murray-steele)

https://medium.com/@dan_manges/the-modular-monolith-rails-architecture-fb1023826fc4

We hear a lot about how monolith applications are bad; hard to work with, too 
big for one person to understand, have unwieldy test suites that don't give
feedback quickly enough.  The list goes on.  The popular solution to this is 
to use a microservices approach.  Of course you solve one set or problems only 
to create another; detail of the system is lost to the network, dependencies 
between services mean deploying in lock-step, contract testing and end-to-end 
integration tests are complicated to orchestrate.  The list goes on.  Both 
approaches have upsides and downsides, and what works for one team won't work 
for another.  This article suggests another way; structuring your monolith as 
if it is separate services, but keeping it all together.  It also suggests a
path for migrating from a monolith to a modular approach, advice I've found
lacking in most articles about microservices and monoliths.  It's unlikely I
need to know how to make a brand new perfect application, but I do appreciate
finding out how to make improvements to an existing application.

## Dwitter - [Henry T](/team#henry-turner)

https://www.dwitter.net/top

Javascript canvas animations in 140 characters or less! Some of them are almost unbelievable. The animation loop (`t` is the time) and the canvas 2d context (`x`) are supplied, and there are a few aliases such as `S()` for `Math.sin()` to help keep the character count down. If you want to try one yourself, or view the source to see the setup [try Dwitterish](http://www.russellbeattie.com/dwitterish.html).

## Problem vs Solution Interviews - [Richard S](/team#richard-stobart)

https://blog.leanstack.com/the-updated-problem-interview-script-and-a-new-canvas-1e43ff267a5d

If you have drunk the LeanStartup Kool Aid you will already be familiar with Ash's work.  We think this particular article translates well to UX Research.  The interview  templates make you at least think about separating out the user's problem from your solution.

## Deepfakes - [Elena T](/team#elena-tanasoiu)

http://svencharleer.com/blog/2018/02/02/family-fun-with-deepfakes-or-how-i-got-my-wife-onto-the-tonight-show/

How one guy got his wife on the Tonight Show. And how AI is making us trust online media less and less. 

## Track of the Week - [Ben W](/team#ben-wong)

My favourite christmas ad.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Z3zD7z2vKZ8" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

[Voices Nationwide: Flo & Joan on the post-Christmas Day lull](https://www.youtube.com/watch?v=Z3zD7z2vKZ8)
