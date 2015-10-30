---
weekly_roundup: true
date: "2013-01-11 15:47:00 UTC"
published: true
title: "Happy 2013 Dev Newletter"
author: "Elizabeth Curson"
tags:
  - Rails
---

Goodafternoon and a very happy New Year to you all.


## Automatic Generation and Evaluation of Recombination Games (Lizard)
A dissertation I stumpled upon recently which details, mathematically, what makes a game fun. Very interesting read if you have the time
http://dev.pubs.doc.ic.ac.uk/phd-game-design/phd-game-design.pdf


## Rails app security (Murray)
Over the festive break I saw some people talking about the secret token that rails apps use to secure their sessions, and how most apps check that into source control and use the same one for all environments.

This gist is a good start on describing the problem and describing potential solutions: https://gist.github.com/59b8b18bdcfe0af63e3b

Most of the apps we work on won't be hugely exploitable by this as they're not in public repos, but I don't think we should have to think about it as a special case for apps that are public.  It's not as if we don't already have processes for managing this; we don't commit other, more obvious, secrets like database.yml or API keys, instead we leave it up to our deployment process to set up the correct production copy.  We should extend that process to cover session secrets too.


## Song of github (Murray)

This is amazing: http://song-of-github.herokuapp.com - it takes your github contributions chart and converts it to piano noises.  Sort of like those [piano rolls](http://en.wikipedia.org/wiki/Piano_rolls) used in [player pianos](http://en.wikipedia.org/wiki/Player_piano).  Full disclosure - I have a history of liking software that converts data in one format into data in another format - https://github.com/h-lame/stegosaurus.


## Animatable pseudo-elements land in WebKit (Carl)
You don't know how happy this makes me
http://peter.sh/2013/01/animatable-pseudo-elements-seamless-iframe-fixes-and-happy-2013/


## Initial support for flexbox lands in Firefox 18 (Carl)
This will change everything
https://developer.mozilla.org/en-US/docs/Firefox_18_for_developers


## "Beyond Media Queries: An Anatomy of an Adaptive Web Experience" (Tom S)
Just watched this conference on vimeo about adaptive web experience which was quite interesting - http://vimeo.com/55076713

##Nice visualisation of complex numbers and Julia Fractals: (TtT)
http://acko.net/blog/how-to-fold-a-julia-fractal/

## Approximately 1 Million links (Steve)

You suck at Powerpoint: 5 shocking design mistakes you need to avoid
http://www.slideshare.net/jessedee/you-suck-at-powerpoint-2

A typographic dating game
http://www.typeconnection.com/

Drag and drop screenshots to see screenshots of them being used on real devices.
http://placeit.breezi.com/

Click the Bookmarklet and Find the Tweetable Sentences On Any Web Page (When it works.)
http://www.savepublishing.com/

jwalk provides an easy way to inspect the object tree created by a JSON file via the command line.
https://github.com/nkohari/jwalk

Star Trek Next Generation-flavoured Lorem Ipsum
http://www.rikeripsum.com/

Front-end London is a free event hosted by Made by Many that's dedicated to all aspects of front-end development.
http://www.frontendlondon.co.uk/

HTML5 Bones is a template that goes back to basics and provides you with the bare minimum required to get going with HTML5.
http://html5bones.com/

Emoji emoticons are supported on Campfire, GitHub, Basecamp, Turntable.fm, Teambox, Trac and Flowdock.
http://www.emoji-cheat-sheet.com/

Build curated lists of related links.
http://www.makesets.com/

Visualising user flows to help you find great mobile design patterns.
http://uxarchive.com/

Why conference diversity matters
http://www.netmagazine.com/opinions/why-conference-diversity-matters

Submitting a Talk Proposal to a UX Conference This Year? Read This.
http://www.90percentofeverything.com/2013/01/10/submitting-a-talk-proposal-to-a-ux-conference-this-year-read-this/

Meet The Happiest Animal In The World
http://www.buzzfeed.com/mattbellassai/meet-the-happiest-animal-in-the-world-6z51

howdoi - a command line code search tool
https://github.com/gleitz/howdoi

SVG sparklines, bars, and circles
https://github.com/phuu/sparksvg

---

Finally, as <s>threatened</s> promised

##Some of my personal favourite memes of 2012 (Lizard)

Fruit:
http://i.imgur.com/C4ZLz.jpg

Free samsung galaxy:
http://25.media.tumblr.com/tumblr_m9j8khGPDV1rwutrpo1_1280.png
http://24.media.tumblr.com/tumblr_m9j8khGPDV1rwutrpo2_1280.jpg
http://24.media.tumblr.com/tumblr_m9j8khGPDV1rwutrpo3_1280.jpg
http://24.media.tumblr.com/tumblr_m9j8khGPDV1rwutrpo4_1280.jpg

Adobe:
http://benisawesome.files.wordpress.com/2012/09/tumblr_m9vglnlbzc1r3s5n0o1_500.jpg

People and statues:
http://25.media.tumblr.com/tumblr_lyihwiG0yU1qlsf5co10_500.jpg
http://29.media.tumblr.com/tumblr_lyihwiG0yU1qlsf5co1_500.jpg
http://29.media.tumblr.com/tumblr_lyihwiG0yU1qlsf5co4_400.jpg
http://28.media.tumblr.com/tumblr_lyihwiG0yU1qlsf5co7_500.jpg
http://26.media.tumblr.com/tumblr_lyihwiG0yU1qlsf5co9_500.jpg

Mary Jane Pose
http://stayinbedgrowyourhair.tumblr.com/post/9711869259/panasonicyouth-belgianbollocks

and lastly

Response to criticism of The Stanley Parable
http://www.youtube.com/watch?v=AZ-IcS7mRSk


Have a fantastic weekend everyone ^_^


>^..^< Lizard
