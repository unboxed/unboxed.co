---
weekly_roundup: true
date: "2013-05-10 16:55:00 UTC"
published: true
title: "It's life, Jim, but not as we know it"
authors:
  - "Jolyon Pawlyn"
tags:
  - Rails
---

[Go faster tip of the week](http://ariejan.net/2011/09/24/rspec-speed-up-by-tweaking-ruby-garbage-collection/) is an old one but has had such a major impact on speeding up tests in a current project (by 50%!) that I think it's worth a plug. And here's a pick of some of the juiciest jalapeños from around the web...

## [Postgres: the best tool you're already using](http://adamsanderson.github.io/railsconf_2013/)  - [Murray](/people#murray-steele)

Slides from railsconf about postgres.  Not very aptly named as of course, many people *aren't* using it.  After reading it I'm more and more convinced that we should be.  I'd normally shy away from embedding soo much logic or functionality in the SQL layer, but I suspect that's because I've been burned by MySQL and MS SQL (the db engines I've used in anger in the past) being too weird.  The flip side of that is that when I use a NoSQL db the features discussed in this talk are exactly the sort of things I'd be happy to leave up to the storage engine I'm using.  Feels like it might be time to embrace them in a SQL db too.

## Git   - Jim

I've been using Atlassian's SourceTree successfully for a while, it's got a nice interface for the visual stuff.

http://www.atlassian.com/software/sourcetree/overview

They've also just released a very interesting-looking command line tool called tig

http://blogs.atlassian.com/2013/05/git-tig/

## Video codec in JS and Git tig II - Matt

[A couple of months ago](/blog/improve-your-week-with-this-1-weird-old-tip) my submissions to the UBXD Dev blog showcased some nifty Javascript displays. The bar has been raised with a new video codec capable of HD quality written entirely in javascript.  The press release from last week is at http://www.otoy.com/130501_OTOY_release_FINAL.pdf and an analysis of these codecs can be found [here] (http://arstechnica.com/information-technology/2013/05/are-video-codecs-written-in-javascript-really-the-future/)

Prefer the command line to gui? Here's a command-line git client which provides interactive operations normally found only in the more heavy-weight GUI counterparts. It's also available via homebrew for the Mac users. Details at http://blogs.atlassian.com/2013/05/git-tig/
