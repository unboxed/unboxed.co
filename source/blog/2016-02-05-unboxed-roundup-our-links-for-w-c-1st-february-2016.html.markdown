---
weekly_roundup: true
title: 'Unboxed Roundup: Our links for w/c 1st February 2016'
date: '2016-02-05 14:30:00 UTC'
author: 'Murray Steele'
tags: # (Delete as appropriate)
- Culture

---

## Stop sleeping in your tests - [Andrew W](/people#andrew-white)

https://github.com/schneems/wait_for_it

We often see in tests a `sleep(10)` or something like it to make the suite pause whilst a process boots, an AJAX call happens, etc. and since the CI server often runs slower than your development machine you add a couple of extra seconds to reduce intermittent test failures. Now the new wait_for_it gem from Richard Schneeman at Heroku means you don't have to slow down your test suite unnecessarily waiting for processes to finish - just wrap the dependent code in a block passed to `WaitForIt.new` and delete those `sleep` calls.

## On Net Promoter and Data Golems - [Andrew W](/people#andrew-white)

https://medium.com/on-human-centric-systems/on-net-promoter-and-data-golems-a4af7575fa5b#.g1jjf1vcl

Matt LeMay explains why Net Promoter scores should not be the be-all and end-all of how you measure the success of your product and the difficulty it has in representing complex social models of interaction.

## Track of the Week - [](/people#)

