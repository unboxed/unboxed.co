---
weekly_roundup: true
title: 'Unboxed Roundup: Our links for w/c 9th January 2017'
date: '2017-01-13 14:30:00 UTC'
authors:
  - 'Murray Steele'
tags: # (Delete as appropriate)
- Culture

---

## Stack Overflow Developer Survey 2017 - [Charlie E](/team#charlie-egan)

https://www.surveymonkey.com/r/92SGNSF

Each year stackoverflow asks lots of questions to lots of developers and does a
nice write up of the results. Last year they had over 50k responses & did a nice
write up of the results [here](http://stackoverflow.com/research/developer-survey-2016).

## Ruby 2.4 Hashes - [Murray S](/team#murray-steele)

https://blog.heroku.com/ruby-2-4-features-hashes-integers-rounding

Another year passes and another version of Ruby is released as a Christmas
present for the ruby community.  This article explains some of the new features
and changes.  I particularly enjoyed the deep-dive explanation of how hashes
work, and how tweaking the implementation has made them much faster in ruby 2.4.

## The Cloudcast #281 - Monoliths and Microservices - [Charlie E](/team#charlie-egan)

http://www.thecloudcast.net/2016/12/the-cloudcast-281-monoliths-and.html

An interview with [Anders Wallgren](https://twitter.com/anders_wallgren) with a
more balanced take on the Monolith vs. Microservices discussion. The take away
for me was that 'monolith problems' often stem from process or organizational
culture and that microservices can't fix that.

## Git alias tips - [Murray S](/team#murray-steele)

http://blogs.atlassian.com/2014/10/advanced-git-aliases/

My workflow when working on a new feature in git to start with a new branch as
follows:

    git checkout -b feature-name

Time will pass and I'll make some commits.  When I'm ready to share my work with
the world I type:

    git push

This doesn't do anything, because I have configured my git client to only push
the current branch to it's remote tracking branch.  On new branches there is no
remote tracking branch and this results in an error:

    fatal: The current branch butts has no upstream branch.
    To push the current branch and set the remote as upstream, use

        git push --set-upstream origin feature-name

I then copy the command from the error emssage and run it to push my commits up
to the remote and set that remote as the tracking branch for my local branch.
I'm pretty happy with this workflow for the most part as I'm lazy and I don't
have to type a lot, but I know deep-down that it's far from ideal.  I wondered
if I could write an git alias to extract the branch name and then do the push
directly, but I couldn't work out how to make the alias dyanmic so it could pick
up the branch name.

I recently decided to fix this once and for all and found this article which
explains how to shell out in your git aliases, so now I have:

    [alias]
      firstpush = "!f() { git push --set-upstream origin `git symbolic-ref --short HEAD`; }; f"

in my `.gitconfig`, which means I can type:

    git firstpush

and no longer have to copy and paste from an error message as part of my
workflow.  Hurrah!

## Textures.js - [Charlie E](/team#charlie-egan)

http://riccardoscalco.github.io/textures/

I've had various interesting discussions with [petition map
Cale](https://twitter.com/tlfrd) about heat-maps, cartograms and choropleths and
how colour can introduce bias. Maybe textures would work better?

## Track of the Week - [Tim H](/team#tim-higgins)

This cheery little tune from the mid 1980s seems so current at the moment I had to choose it ;)  Nuf said.

<iframe width="560" height="315" src="https://www.youtube.com/embed/4VgLkk_drx4?list=RD4VgLkk_drx4" frameborder="0" allowfullscreen></iframe>

[World Destruction - John Lydon, Afrika Bambaataa](https://www.youtube.com/watch?v=4VgLkk_drx4&list=RD4VgLkk_drx4)

