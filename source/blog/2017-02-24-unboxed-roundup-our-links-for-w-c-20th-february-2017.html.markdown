---
weekly_roundup: true
title: 'Unboxed Roundup: Our links for w/c 20th February 2017'
date: '2017-02-24 14:30:00 UTC'
authors:
  - 'Murray Steele'
tags: # (Delete as appropriate)
- Culture

---

## Graphical depiction of ownership and borrowing in Rust - [Charlie](/team#charlie-egan)

https://rufflewind.com/2017-02-15/rust-move-copy-borrow

I know this is kind of specific but I also know I'm not the only one here
that's interested in [Rust](https://www.rust-lang.org). It's also a really
good diagram for something that's not easily understood. There's even a [PDF
version](https://rufflewind.com/img/rust-move-copy-borrow.pdf) for making
posters to spread the good word.

## Rails 5.1.0.beta1: Loving JavaScript, System Tests, Encrypted Secrets, and more - [Chris H](/team#chris-holmes)

http://weblog.rubyonrails.org/2017/2/23/Rails-5-1-beta1/

The first beta of Rails 5.1 has been released this week and this post details
the changes. It's really great to see system tests become part of the framework
and there are lots of changes in JavaScript land with the introduction of Yarn,
Webpack and JQuery being removed as a dependency and much more.

## The first SHA-1 collision has been found - [Elena](/team#elena-tanasoiu)

https://security.googleblog.com/2017/02/announcing-first-sha1-collision.html

According to [Bruce
Schneier](https://www.schneier.com/blog/archives/2017/02/sha-1_collision.html)
the first SHA1 collission has been expected for over a decade. Now there's an
 algorithm to speed up collision generation.

Nine quintillion SHA1 computations and 110 GPU years were needed to arrive at
 the first collision. Comparatively MD5 can be broken on a smartphone in 30
  seconds, and traditionally bruteforcing SHA1 would take 12 million GPU years.

## Making animations from a series of images - [Tom S](/team#tom-sabin)

Using ImageMagick (installable from homebrew), you can do some cool simple
things like creating an animated GIF using the `convert` command. Take the
example below, where I’m inside a directly of images which have been ordered
sequentially:

```
/usr/local/bin/convert -delay 100 -loop 0 * ~/Desktop/animated.gif
```

This creates an `animated.gif` image which loops endlessly and has a delay of
100 ticks per second. If you want the animation faster then decrease the ticks.

## Image to Image translation in Tensorflow - [Elena](/team#elena-tanasoiu)

http://affinelayer.com/pixsrv/index.html

pix2pix-tensorflow is able analyze a sketch and generate an image of what it
thinks you were imagining. It works by training on pairs of images (a sketch
and an outcome).

From the examples given, it seems to be pretty intelligent in realistically
rendering someone's doodles. It's fun to think that this might become useful
for people who can't draw but would like to generate decent, believable
artwork.

## Here's What TfL Learned From Tracking Your Phone On the Tube - [Charlie](/team#charlie-egan)

http://www.gizmodo.co.uk/2017/02/heres-what-tfl-learned-from-tracking-your-phone-on-the-tube/

Setting any privacy concerns aside; I think these results from tracking
passengers around the tube network is really interesting. TFL took efforts
to protect privacy and make passengers aware (I noticed the posters). As well
as the larger 'traffic flow' maps; there's also a plan drawing of a station
with journey times annotated.

## PostgreSQL Vacuuming: An Introduction for Busy Devs - [Chris H](/team#chris-holmes)

http://okigiveup.net/postgresql-vacuuming-an-introduction-for-busy-devs/

A project I've been working on recently had issues with PostgreSQL vacuuming
and dead rows in a number of their large and more active tables. I found the
[PostgreSQL docs](https://www.postgresql.org/docs/current/static/routine-vacuuming.html)
to be very useful and this link gives a nice overview of vacuuming, why it is
used and how it can be improved.

## Track of the Week - [Sarah B](/team#sarah-beck)

It always seems I get to do this the week before holiday!
So, this time I am off skiing, with my family. And this song was playing on repeat on a holiday in Italy when
I was younger, so reminds me of family holidays!

<iframe width="560" height="315" src="https://www.youtube.com/embed/CU3mc0yvRNk?ecver=1" frameborder="0" allowfullscreen></iframe>

[The Dandy Warhols - Bohemian Like You](https://www.youtube.com/watch?v=CU3mc0yvRNk)
