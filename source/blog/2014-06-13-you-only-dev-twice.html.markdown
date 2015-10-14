---
layout: "blog"
weekly_roundup: true
date: "2014-06-13 11:42:00 UTC"
published: true
title: "You only dev twice"
author: "Murray Steele"
tags:
  - Rails
---

### JS Library Detection - [Tom S](http://www.unboxedconsulting.com/people/tom-sabin)

[https://chrome.google.com/webstore/detail/library-detector/cgaocdmhkmfnkdkbnckgmpopcbpaaejo](https://chrome.google.com/webstore/detail/library-detector/cgaocdmhkmfnkdkbnckgmpopcbpaaejo)

A useful Chrome extension to find out what JS libraries are being used on the website you are browsing.

### Git 2.0 - [Gavin](http://www.unboxedconsulting.com/people/gavin-van-lelyveld)

[http://blogs.atlassian.com/2014/06/happened-git-2-0-full-goodies/](http://blogs.atlassian.com/2014/06/happened-git-2-0-full-goodies/)

``git log --show-linear-break`` is pretty cool. From the man page:

> When --graph is not used, all history branches are flattened which can make it hard to
> see that the two consecutive commits do not belong to a linear branch. This option puts
> a barrier in between them in that case.

### Why Docker? Why not Chef? - [Murray](http://www.unboxedconsulting.com/people/murray-steele)

[http://blog.relateiq.com/why-docker-why-not-chef/](http://blog.relateiq.com/why-docker-why-not-chef/)

Recently I've been doing a lot of sysadmin work on our infrastructure.  Which means I've been [learning chef](http://gettingstartedwithchef.com/) as that's what we use chef to manage it.  I would say that, at best, it's been a bit of a frustrating process.  I'm sure a large part of that is that I'm learning both chef the tool and our own chef application at the same time.

I don't know that I'm quite ready to throw chef in the bin and use a different tool, but the arguments in this article certainly resonate with me.  Particularly the idea of never upgrading a server, just creating a new one and swapping it with the old one.  I don't know enough about docker to say if it's something I'd like any more than chef, but this article certainly has me interested.

### A first person game-engine in JS - [Murray](http://www.unboxedconsulting.com/people/murray-steele)

[http://www.playfuljs.com/a-first-person-engine-in-265-lines/](http://www.playfuljs.com/a-first-person-engine-in-265-lines/)

This blog post introduces us to a simple 3d game engine in javascript.  I like this for a couple of reasons:

1. The blog post introduces the concepts used in the engine in a clear and understandable way; [ray casting](https://en.wikipedia.org/wiki/Ray_casting), [collision detection](https://en.wikipedia.org/wiki/Collision_detection), lighting effects, etc...
2. The code itself is surprisingly simple, even without the blog post to explain the techniques I  got a lot out of just reading the code.

A while back I wrote a [terrible rogue game engine](https://github.com/h-lame/lruggery/tree/master/names_from_a_hat/rogue) to randomise names for [an LRUG lightning talk evening](http://lrug.org/meetings/2012/01/24/february-2012-meeting/).  I found implementing the game engine for that surprisingly simple (once I found the right resources), and this article has made me consider writing a 3D engine for wandering around in the generated "dungeons".

### The Rails/Merb Merge In Retrospect - [Murray](http://www.unboxedconsulting.com/people/murray-steele)

[http://gilesbowkett.blogspot.co.uk/2014/06/the-railsmerb-merge-in-retrospect.html](http://gilesbowkett.blogspot.co.uk/2014/06/the-railsmerb-merge-in-retrospect.html)

This article about the Rails + Merb merge could seem like it is 4 years too late, especially when you consider that Rails 3, the result of the merge, [was released in August 2010](http://weblog.rubyonrails.org/2010/8/29/rails-3-0-it-s-done/), but it's hard to evaluate if the merge was a success without the benefit of time to see if rails developers are making much use of the features promised by the merge.  Giles argues that mostly we aren't, and that the time it took to deliver the merge meant that Rails lost it's edge in other areas.  I don't know that I fully buy the argument that Giles presents, but I'm definitely sympathetic to it.

Either way, I think it's a useful piece of writing and I'd like to see more articles that explore this sort of reflection on technology.  So much of the writing about technology we see is just hype about the latest hot! new! cool! thing! that it's refreshing to read about critically evaluating those things much later to see if they delivered on their promises (*spoiler*: they probably don't).

### My Top RailsConf 2014 Talks - [Karl](http://www.unboxedconsulting.com/people/karl-entwistle)

#### [All the Little Things by Sandi Metz](https://www.youtube.com/watch?v=8bZh5LMaSmE)

[Sandi Metz](http://www.sandimetz.com/) talks you through her refactor of [Jim Weirichs’ Gilded Rose Code Kata](https://github.com/jimweirich/gilded_rose_kata). Sandi’s approach is extremely pragmatic and the talk is mostly focused on object orientation. If you haven’t seen it yet you should watch this talk; if nothing else it's a nice satisfying example of how to approach and conquer some really complicated interwoven logic.

#### [Closing Keynote by Aaron Patterson](https://www.youtube.com/watch?v=BTTygyxuGj8)

“Science is important” says [Aaron Patterson](http://tenderlovemaking.com/). I enjoyed the first part of this talk because it rebutted some of the comments DHH made in his opening speech. Aside from Aarons usual antics he also talks you through his latest creation [AdequateRecord](http://tenderlovemaking.com/2014/02/19/adequaterecord-pro-like-activerecord.html).

#### [You are Not an Impostor by Nickolas Means](https://www.youtube.com/watch?v=l_Vqp1dPuPo)

This one is less about software and more about wetware. [Nickolas Means](http://nickol.as/) shows you why your impostor syndrome / status anxiety is so powerful and how you can break free from the grip it has on your life.
