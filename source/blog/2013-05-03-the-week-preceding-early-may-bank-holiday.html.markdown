---
weekly_roundup: true
date: "2013-05-03 14:18:00 UTC"
published: true
title: "The Week Preceding Early May Bank Holiday"
authors:
  - "Matt Peperell"
tags:
  - Rails
---

Enjoy the long weekend, folks!


##Drag and drop bootstrap design - MattP
Rapid prototyping with drag+drop twitter bootstrap - http://www.layoutit.com/ explains all

## Intern - Carl
Automated cross browser JavaScript testing. It's like a smart TestSwarm which can run locally or against saucelabs/your own selenium grid. I think I'll be giving this a crack. It's async stuff is promise based because that's cool.

http://theintern.io


## An intervention for ActiveRecord - Leo
https://speakerdeck.com/erniemiller/an-intervention-for-activerecord

An interesting slide deck by Ernie Miller from this week's RailsConf 2013 on ActiveRecord's inherent ugliness. Featuring a cameo appearance by our very own Murray Steele on slide 99. Definitely looking forward to watching the video when it comes out.


## Toyota, Respect for People (or “Humanity”) and Lean - Ben Wong
http://www.leanblog.org/2013/02/toyota-respect-for-people-or-humanity-and-lean/

* “respect for people is the attitude that regards people’s ability to think most.”
* Respect is not about being nice, nor is it about having great “people skills.” It’s about challenging people to perform to their peak ability, not being superficially nice.

## Use GitX?  Forget it, try GitXXX - Will
Some lovely person has forked GitX and added all the features we all thought should have been there in the first place.  You can now push, pull, rebase, cherry-pick, view source, blame, and history for a repo, use a beautiful new sidebar.  It even does a limited kind of syntax highlighting.  Forget git towers, it's GitX all the way now.

It's here: http://brotherbard.com/blog/



## Losing your rubies? - Will
I'm sure the experienced rubyists among us already know this, but I've only just discovered this one and I think it's one everyone should know.

Having trouble tracking down where a method is coming from?  Don't know if your method has been abducted by evil, black magick monkeys? Try this:

`method(:image_tag).source_location
===> ["/Users/will/.rvm/gems/ree-1.8.7-2012.02@nature_jobs_rails_3/gems/actionpack-3.2.11/lib/action_view/helpers/asset_tag_helper.rb", 356]`

