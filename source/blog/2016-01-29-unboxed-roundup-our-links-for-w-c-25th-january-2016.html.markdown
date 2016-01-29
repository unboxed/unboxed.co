---
weekly_roundup: true
title: 'Unboxed Roundup: Our links for w/c 25th January 2016'
date: '2016-01-29 14:30:00 UTC'
author: 'Murray Steele'
tags: # (Delete as appropriate)
- Culture

---

## Postgres Query Plan Visualization - [Andrew W](/people#andrew-white)

http://tatiyants.com/postgres-query-plan-visualization/

Ever wondered what those weird numbers are when you're trying work out why your SQL query performance is so bad and you do "EXPLAIN SELECT ...". Well, wonder no more because Alex Tatiyants has written a Postgres EXPLAIN Visualizer (PEV) that will take the output from the EXPLAIN command and turn it into a human legible diagram so that mere database mortals can see what's happening to their query.

## Thinking about technical debt differently - [Murray S](/people#murray-steele)

http://laughingmeme.org/2016/01/10/towards-an-understanding-of-technical-debt/

We talk about technical debt a lot, but there's no clear understanding across our industry of what we mean.  We all know it's something bad, but we can mean lots of differnt things that require different approaches to mitigate or remove.  This article goes into what we really mean when we use those words and explores the different meanings.  The closing paragraph has a really good point too, about not getting too hung up on the choices we make right now:

>  All code is technical debt. All code is, to varying degrees, an incorrect bet on what the future will look like.

So true.

## Rails Dynamic Render to RCE (CVE-2016-0752) - [Andrew W](/people#andrew-white)

https://nvisium.com/blog/2016/01/26/rails-dynamic-render-to-rce-cve-2016-0752/

Rails 4.2.5.1, 4.1.14.1 and 3.2.22.1 were released this week to fix a number of vulnerabilities but CVE-2016-0752 was probably the most serious one, but hopefully it's  the least likely to occur in the wild since it requires the developer to be passing the parameters hash directly into the `render` call. Moral of the story is never pass user generated data in to methods that either eval Ruby or call `send` directly if possible, but if you must then you must whitelist it first.

## Tidy test setups with Factory Girl - [Neil v B](/people#neil-van-beinum)

http://cookieshq.co.uk/posts/useful-factory-girl-methods/

I was interested to read about some more advanced uses of Factory Girl that are outlined here. I've only really used the basics - defining a factory and then creating objects from those factories in test setups. This article describes how you can use the `trait` concept to extend your factories.

## NakayoshiFork gem for Copu-on-Write in Ruby 2.2+ - [Andrew W](/people#andrew-white)

https://github.com/ko1/nakayoshi_fork

Changes in Ruby 2.2 and later to the generational garbage collection algorithm means that new objects that are promoted to old objects end up marking their memory pages as dirty. So when the process is forked (e.g. a new unicorn process to process HTTP requests) and a GC run occurs afterwards it can end up copying memory needlessly, resulting in process memory bloat. The NakayoshiFork gem fixes this by patching the `fork` method to ensure that all new objects are promoted to old objects first before the actual fork takes place.

## Hacking inclusion: How we customised a bot to gently correct people who se the word ‘guys’ - [David B](/people#david-basalla)

https://18f.gsa.gov/2016/01/12/hacking-inclusion-by-customizing-a-slack-bot/

While the title is probably overselling the point of the article in typical click-bait fashion, the issue it addresses seems relevant. The use of the word ‘guys’ has come up at Unboxed as well as at GDS, with people (myself included) using it to address both genders where more inclusive terms such as ‘people’, ’team’ etc could be used. The article explains how 18F customised their SlackBot to suggest corrections when the word ‘guys’ is used.

## Opening GOV.UK's Puppet repository - [Andrew W](/people#andrew-white)

https://gdstechnology.blog.gov.uk/2016/01/19/opening-gov-uks-puppet-repository/

Often whilst an app's source code can be made public (like the code for https://petition.parliament.uk lives at https://github.com/alphagov/e-petitions) the tools that are used to deploy the app and maintain the infrastructure are kept private because they normally contain a multitude of passwords and secrets. If it is done, then the normal approach it to reset the commit history after the secrets are removed but recently GDS published the Puppet code for managing and deploying the GOV.UK website and this blog post explains how they did it whilst retaining the commit history.

## Track of the Week - [Andrew W](/people#andrew-white)

I was a big fan of The The in the 80s when I was a teenager and when I heard of the recent passing of artist Andy Dog Johnson who did the fantastic cover for Infected I dusted off the CD and re-listened to it. It still sounds great some 30 years later so I had to choose the track 'Slow train to dawn' because it's what I seem to spend most of my time doing and it's a great collaboration with Neneh Cherry.

<iframe width="420" height="315" src="https://www.youtube.com/embed/TfzvFKO1ud8" frameborder="0" allowfullscreen></iframe>
["Slow Train To Dawn" by The The](https://www.youtube.com/watch?v=TfzvFKO1ud8)
