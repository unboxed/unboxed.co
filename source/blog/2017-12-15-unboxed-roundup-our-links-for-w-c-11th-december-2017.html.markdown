---
weekly_roundup: true
title: 'Roundup: Rebuilding Slack, Chrome and .dev, Flexbox and CSS 
grids, Ruby v2.5 features, and Capybara JS testing'
date: '2017-12-15 14:30:00 UTC'
authors:
  - 'Neil van Beinum'
tags: # (Delete as appropriate)
- Culture

---

## Rebuilding slack.com - [Tom S](/team#tom-sabin)

https://slack.engineering/rebuilding-slack-com-b124c405c193

A glimpse into how the team at Slack rebuilt slack.com and separated the shared code from the Slack web app. It's nice to see that they've embraced CSS Grid and are using feature queries to fall back to a Flexbox-based layout when it's not supported.

## The tale of `.dev` - [Murray S](/team#murray-steele)

https://medium.engineering/use-a-dev-domain-not-anymore-95219778e6fd

Soon, a version of Google Chrome will ship that forces all traffic to `.dev`
domains to be https.  This is a problem for any developer that uses a
locally-defined `.dev` domain to test websites running on their own machines.
The article explains some workaround if you are affected by this, but what I
really liked about it is that it takes you on a journey through the history of
the internet and domain names to explain how we got here.

## Flexbox and CSS Grid in harmony - [Tom S](/team#tom-sabin)

https://aerolab.co/blog/flexbox-grids/

This article aims to debunk the 'Flexbox vs CSS Grid' belief, and has some examples of using both layouts together, or showing when to just use one or the other. I've yet to use CSS Grid myself, so I particularly enjoyed the Fluid Grid Layout example being built out.

## 10 More New Features in Ruby v2.5 - [Elena T](/team#elena-tanasoiu)

https://tom-lord.github.io/10-More-New-Features-In-Ruby-2.5/

A follow up to the original post which appeared in October: ["Ten new features in Ruby v2.5"](https://blog.jetbrains.com/ruby/2017/10/10-new-features-in-ruby-2-5/), with even more juicy new features for the Christmas release of Ruby 2.5.

## Capybara JavaScript testing - [Tom S](/team#tom-sabin)

https://bibwild.wordpress.com/2016/02/18/struggling-towards-reliable-capybara-javascript-testing/

It's been another one of those days where I've been blessed with an intermittently failing Capybara JavaScript test, and I'm way past page 2 of my frantic Google adventure. However, I found this article breaking down _most_ issues that could be causing my failure. It's worthy of a read just to remind yourself what is going on, despite CSS animations being the cause of my problem... However, the writer's last sentence suggests to avoid heavy JS-enabled feature tests if possible. Probably wise if you can!

> I think all we can do is avoid Capybara JS feature tests as much as possible — stick to the bare minimum of 'happy path' scenarios you can get away with (also common feature-test advice), it's less painful than the alternative.

While debugging this pesky test, I crafted a handy command to run the test continuously, until it fails. As of writing this, I've ran the same test 316 times without failure, good enough for me when I was able to spot the problem between 10-50 attempts.

`while bundle exec rspec path/to/spec.rb:10; do (( count++ )); echo $count; done; echo "Failed after $count reruns`

## Track of the Week - [Richard S](/team#richard-stobart)

A banging tune for getting you into the festive spirit without being a Christmas song.

<iframe width="560" height="315" src="https://www.youtube.com/embed/THt5u-i2d9k" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>

[Infernal - Paris to Berlin](https://www.youtube.com/watch?v=THt5u-i2d9k)
