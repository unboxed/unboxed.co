---
weekly_roundup: true
title: 'Unboxed Roundup: Our links for w/c 14th November 2016'
date: '2016-11-18 14:30:00 UTC'
authors:
  - 'Murray Steele'
tags: # (Delete as appropriate)
- Culture

---

## Wealth, in pictures - [Crystal](/people#chris-carter)

http://waitbutwhy.com/2014/03/combined-wealth-world.html

A bit of an old article now, but shows (in interesting and visualisable ways)
how the wealth of the world is split. I like the idea of climbing 68% of the
way to the moon on money.

## [Discussion Thread] What simple tools or products are you most proud of making? - [Charlie](/people#charlie-egan)

https://news.ycombinator.com/item?id=12957371

Spent over an hour reading this thread; people have posted all sorts of
interesting side projects. Some highlights for me:

* [followww.co](https://followww.co/) - visualises redirects and cookies set along the way;
* [launchaco.com](http://launchaco.com/) - a faster more complete domainr
* [imguru](https://github.com/FigBug/imguru) - uploads images to Imgur from the command line
* [transfer.sh](https://transfer.sh) - a simple CLI for file transfers.

## Fast Search Using PostgreSQL Trigram Indexes - [Chris H](/people#chris-holmes)

https://about.gitlab.com/2016/03/18/fast-search-using-postgresql-trigram-indexes/

This week I was looking at a slow query that had been causing problems in an app
that I'm working on. The query was performing a "WHERE LIKE" clause against a
table with millions of rows. I changed the query to use the case insensitive
"ILIKE" instead of a combination of "LIKE" and the "upper" function and added
a trigram index which gave significant performance improvements. This article
has some useful info on trigram indexes and how to use them.

## Why We Chose Turbolinks - [Charlie E](/people#charlie-egan)

https://changelog.com/posts/why-we-chose-turbolinks

From a podcast regularly interviewing people making the latest cool thing this
was an interesting read about the state of Turbolinks and why they chose it for
the new Changelog site.

## Real World Rails Applications - [Andrew W](/people#andrew-white)

https://github.com/eliotsykes/real-world-rails

When you're starting out learning Rails it's always a difficult step to take
from a simple CRUD application to a more complicated app. Real World Rails is a
collection of open source apps designed to help you ease that pain by providing
tools that allow you to analyse them.

## Track of the Week - [Elena](https://twitter.com/elenatanasoiu)

It's a song from Icelandic singer Asgeir. All his songs makes me relax and focus during the workday. Enjoy!

<iframe width="560" height="315" src="https://www.youtube.com/embed/9khWBA-572A" frameborder="0" allowfullscreen></iframe>

[Asgeir - King and Cross](https://www.youtube.com/watch?v=9khWBA-572A)
