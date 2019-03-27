---
weekly_roundup: true
title: 'Roundup: PWA on iOS, recurring Stripe payments, measuring time, and zero-width characters'
date: '2018-04-06 14:20:00 BST'
authors:
  - 'Elena Tanasoiu'
tags: # (Delete as appropriate)
- Culture

---

## iOS 11.3 adds support for basic PWA tech - [Tom S](/team#tom-sabin)

https://medium.com/@firt/progressive-web-apps-on-ios-are-here-d00430dee3a7

It's happening! Well, it's certainly on the way to be happening! In the latest iOS version, 
Apple has added a few of the basic technologies required for PWAs. However, as the blog post 
reports, there's still work for Apple to do.

## Stripe Billing - [Henry T](/team#henry-turner)

https://stripe.com/blog/billing

Stripe have finally released recurring payments. It includes a few different models, 
including [metered billing](https://stripe.com/docs/billing/subscriptions/metered-billing), 
which is relevant to the project I'm working on. However this will probably kill a little 
ecosystem of businesses that have developed around the void, which is a bit sad.

## Measuring Time - [Murray S](/team#murray-steele)

https://blog.dnsimple.com/2018/03/elapsed-time-with-ruby-the-right-way/

Finding this article about how relying on the system clock to measure things
is a bad idea was very serendipitous for me.  I'd just read ["Time Travel: A 
History" by James Gleick](https://www.amazon.co.uk/Time-Travel-History-James-Gleick/dp/0307908798)
and thinking about all the ways time can be confusing and unexpected is
front-and-center in my brain right now.  The article explains how the system
clock can end up changing, and what you want to use is the monotonic clock
instead.

## Inserting usernames into text with zero-width characters - [Elena T](/team#elena-tanasoiu)

https://medium.com/@umpox/be-careful-what-you-copy-invisibly-inserting-usernames-into-text-with-zero-width-characters-18b4e6f17b66

How someone secured the text from a private message board by fingerprinting the contents 
with the user currently logged in. If the the text showed up anywhere else, the username 
would be hidden inside it, as a zero-width string. 

There's even a Chrome extension to detect these characters: https://github.com/chpmrc/zero-width-chrome-extension. 

## The death of the newsfeed - [Elena T](/team#elena-tanasoiu)

https://www.ben-evans.com/benedictevans/2018/4/2/the-death-of-the-newsfeed

The chronological feed has been replaced by the algorithmic feed, due to scaling issues. 
The problem is an algorithmic feed will always show you a sample size of your chronological
feed and it's really hard to guess what you actually want to see. 

## Track of the Week - Chris Stobart

Great modern cover of the 1961 original by Ben E King. Its a really uplifting piece and great for getting motivated.

<iframe width="560" height="315" src="https://www.youtube.com/embed/vv2DSmy3Tro" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

[Stand By Me - Florence + The Machine](https://youtu.be/vv2DSmy3Tro)
