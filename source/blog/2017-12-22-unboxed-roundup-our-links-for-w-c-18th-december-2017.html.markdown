---
weekly_roundup: true
title: 'Roundup: SSH + VPN, iPhone performance, event sourcing, maps, and super-bugs'
date: '2017-12-22 14:30:00 UTC'
authors:
  - 'Murray Steele'
tags: # (Delete as appropriate)
- Culture

---

## sshuttle: where transparent proxy meets VPN meets ssh - [Andrew W](/team#andrew-white)

https://github.com/apenwarr/sshuttle

VPNs can be a pain to setup, especially if you're trying to test some geo-ip
targeting code and using the port-forwarding feature of OpenSSH is a nightmare
of remembering confusing argument options so to the rescue comes sshuttle which
uses a standard SSH connection to tunnel all your network connections. Now
testing geo-ip targeting is as easy as spinning up a VM in the AWS
region/Digital Ocean data center of your choice and just firing up sshuttle.

## iPhone performance slowdown - [Tom S](/team#tom-sabin)

https://www.engadget.com/2017/12/20/apple-says-slower-performance-of-older-iphones-intentional/

I'm sure I'm not the only one who's noticed that their iPhone's performance
deteriorates faster than you think is possible, usually around the time a new
iPhone model or iOS version is released. However, theories aside, it turns out
that Apple does throttle performance on iPhone with low battery capacity,
and I'm sure it's not that "Low Power Mode".

## Event sourcing - [Henry T](/team#henry-turner)

https://dev.to/barryosull/event-sourcing-what-it-is-and-why-its-awesome

I work on [Char.gy](https://char.gy). We make electric vehicle charge points.
Based on a series of lots of little messages from the charge points, we have
to determine whether the charge point is working and available to use for a
customer to charge their car. In the current system this generally boils down
to a couple of database rows where we carefully manage the charge point's
with some row level locking. The idea of calculating state, rather than storing
it, appeals to me and event sourcing seems to be the holy grail of this
approach. I found this article to neatly summarise the benefits and a couple
of the issues.

## Google Maps vs. Apple Maps (again) - [Murray S](/team#murray-steele)

https://www.justinobeirne.com/google-maps-moat/

[Tom S](/team#tom-sabin) linked to another article by Justin comparing the
Google and Apple maps data [back in one of our April
roundups](/blog/unboxed-roundup-our-links-for-w-c-10th-july-2017/).  This
follow-up article goes even deeper into the comparison.  It seems like the
head-start that Google has over Apple in collecting data means they are able to
synthesise new data from their data sets to make their maps even more useful.
There's no guarantee that Google aren't doing this by hand, but at the scale
they've got data it seems likely they're using automated tools.  As they
combine more data their maps are only going to get better and better, whereas
it doesn't seem like the Apple maps data is being used in that way, perhaps
because it's mostly licensed and not owned by Apple.

## A New Weapon in the Fight Against Superbugs - [Ben W](/team#ben-wong)

https://www.ted.com/talks/david_brenner_a_new_weapon_in_the_fight_against_superbugs

Turns out we might not all die from the antibiotic resistant bacteria
apocalypse.

## Track of the Week - [Murray S](/team#murray-steele)

Probably my favourite Christmas song.

<iframe width="560" height="315" src="https://www.youtube.com/embed/I6JO1-2llEE" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>

[The Knife - Christmas Reindeer](https://www.youtube.com/watch?v=I6JO1-2llEE)
