---
weekly_roundup: true
title: "Roundup: debugging for performance, British Airways hacked, 
preventing muscle loss, migrating PostgreSQL"
date: '2018-09-14 14:30:00 BST'
authors:
  - 'Neil van Beinum'
tags: # (Delete as appropriate)
- Culture

---

## Debugging for performance - [Murray S](/people#murray-steele)

https://pharr.org/matt/blog/2018/07/16/moana-island-pbrt-all.html

Disney released the 3d model and textures for one of the islands from Moana
as open data and this series of articles describes the work that went into
making that scene render in reasonable time in the open source renderer built
as part of the book [Physically Based Rendering](https://www.pbrt.org/).  I
sat on these articles for ages after they were recommended to me because I was
worried I wouldn't understand anything as I don't really know much about 3D 
rendering.  Turns out, I shouldn't have been worried - the articles are more
about memory profiling and debugging for performance than they are about the
intricacies of 3D rendering.  In fact most of the effort goes into the tools 
that parse and represent the data in memory, rather than the actual rendering.

## The British Airways Breach Explained - [Elena T](/people#elena-tanasoiu)

https://www.riskiq.com/blog/labs/magecart-british-airways-breach/

A breakdown of how the British Airways hack took place, why the code to skim 380.000 credit cards is not that complicated, and how Magecart got around to inserting that code in the payment page and then funnelling the skimmed data out. 

## Preventing Muscle Loss as We Age - [Elena T](/people#elena-tanasoiu)

https://www.nytimes.com/2018/09/03/well/live/preventing-muscle-loss-among-the-elderly.html

Some good advice to keep in mind about how to avoid muscle loss, especially for those of us who sit at our desks all day.

## Migrating PostgreSQL standalone instance to Aurora (Amazon RDS) - [Elena T](/people#elena-tanasoiu)

https://medium.com/@paveltyk/migrating-postgresql-standalone-instance-to-aurora-amazon-rds-3c038cfd2517

A nice migration path described in detail for migrating your postgres instance. 

## Track of the Week - [Elena T](/people#elena-tanasoiu)

<iframe width="560" height="315" src="https://www.youtube.com/embed/8QzHxHk_WoY" frameborder="0" allowfullscreen></iframe>

[Boris Kovac with LA CAMPANELLA ORCHESTRA - An Intro Trip](https://www.youtube.com/watch?v=8QzHxHk_WoY)
