---
layout: "blog"
weekly_roundup: true
date: "2014-12-19 14:30:00 UTC"
published: true
title: "Unboxed Roundup: our links for w/c 15th December 2014"
author: "Murray Steele"
tags:
  - Culture
---

## PostgreSQL 9.4 released - [Pedro](http://www.unboxedconsulting.com/people/pedro-moreira)

http://www.postgresql.org/about/news/1557/

I’ve been waiting for this release, which brings JSONB support, making Postgres an even more flexible tool. The release also brings interesting performance gains to GIN indexes, which are very welcome by everyone making use of hstore, for instance.

## A more useful git diff - [Murray](http://www.unboxedconsulting.com/people/murray-steele)

Commit diffs on github obviously show line differences, but they also highlight the character differences between lines.  For example in [this commit diff](https://github.com/unboxed/be_valid_asset/commit/7b46bba362d32f13a300ee245b708ee6b89d1b64) the diff shows that we've changed the first line of the LICENSE.txt, but also the diff highlights that the real change between the two lines was just the year.  I wanted to get the same from my own git diffs and it turns out that git ships [a perl script](https://github.com/git/git/tree/master/contrib/diff-highlight) that does this if you hook it up.  This [pro-tip by Cameron Tod on coderwall](https://coderwall.com/p/nl-bdg/more-readable-git-word-diff-on-osx) explains how to hook that up on OS X if you're using [homebrew](http://brew.sh/) for git.  If you're not on OS X the comments explain a more general solution.

## Tread carefully with Hashie - [Pedro](http://www.unboxedconsulting.com/people/pedro-moreira)

http://www.schneems.com/2014/12/15/hashie-considered-harmful.html

[Richard Scheems](https://twitter.com/schneems) published an article on the dangers of using Hashie for your projects. This is an interesting take on the problems of subclassing Hash in Ruby, landing with you a type of object that is something between an Hash and an OpenStruct. For me the takeaway is to be careful not to give away the power of composition granted by creating your own POROs and to not fall into the trap of conflating different concepts (in this case, access and manipulation of data) for the sake of convenience.

## Timber! - [Dom](http://www.unboxedconsulting.com/people/dominic-mason)

http://www.ribaj.com/products/europe-s-tallest-cross-laminated-timber-building-tops-out-in-london-s-hackney

Europe’s tallest cross-laminated timber building tops out in London’s Hackney

## Golang Bootcamp - [Pedro](http://www.unboxedconsulting.com/people/pedro-moreira)

http://www.golangbootcamp.com/book/

[Matt Aimonetti](https://twitter.com/mattetti) has made this comprehensive introduction to Golang available for free. I’ve been curious about Go for a while and this arrived just in time for some holiday exploration.

