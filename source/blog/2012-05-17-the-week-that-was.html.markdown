---
weekly_roundup: true
date: "2012-05-17 23:00:00 UTC"
published: true
title: "The Week That Was"
authors:
  - "Jolyon Pawlyn"
tags:
  - Rails
---

Welcome to this weeks installment. @jpawlyn submits for your consideration the following tasty crumpets from the land of tech.

## Mac OS

### View plain text files without a file extension - @sren via @markscholtz and @Iron_Matt

A [QuickLook plugin](https://github.com/whomwah/qlstephen) that lets you view plain text files without a file extension.

## Rails

### RailsConf 2012 - @hlame

This week I watched 3 of the keynotes from RailsConf 2012:

* DHH on [Progress](http://www.confreaks.com/videos/854-railsconf2012-keynote-progress)
* Aaron Patterson on [I've made a huge mistake](http://www.confreaks.com/videos/880-railsconf2012-keynote-i-ve-made-a-huge-mistake)
* Yehuda Katz on [Rails: The next five years](http://www.confreaks.com/videos/907-railsconf2012-rails-the-next-five-years)

I would genuinely say don't bother.  DHH goes on for way too long without really saying anything other than progress means change, Rails 4 will change, Rails 4 will break things, but it will be better so stop complaining and just live with it. Also, in characteristic style, he tells you to fuck off if you don't agree.

Aaron Patterson basically skirts around the same issues in much less time, actually, I struggle to remember what his point was.

Finally, Yehuda actually spends most of his talk speaking about the past 5 years of Rails and where it's been rather than where it's going.  He makes some good points about (again) not complaining when something appears in Rails that you don't like, or don't think should be part of the core.  It's usually a good idea so that things get wide usage and standardised to work out the bugs.  It's not till the last quarter of the talk that he mentions some things that might go into the next versions of Rails (JSON serializers as first class objects), but it's hardly "next five years", I'd argue that it's not even "next five months".

Anyway, there are loads of other talks to watch online and I'd say that these 3 keynotes aren't worth your time. There are some good points in them, but not enough to warrant spending the ~2hrs it would take to watch all 3; seek out some write-ups and notes and you'll get all the good points much quicker.

### CanCan - Grant

I really love this library and usually use it by default on all my personal projects plus I usually update my controller generators to use this by default.
So I recommend we use this on all our new projects :)

[CanCan](https://github.com/ryanb/cancan) is an authorization library for Ruby on Rails which restricts what resources a given user is allowed to access. All permissions are defined in a single location (the Ability class) and not duplicated across controllers, views, and database queries.

## Markup and Javascript

### Maps - Joerge boy

If we want to use maps - we are not limited to Google. Even if we have written a lot of javascript code already that deals with the Google Maps API - that's not a problem. Because - part of the Google API - version 3 at least - you can swap out the mapping tiles for more attractive looking tiles - either from OpenStreetMap (OSM) directly - or for even more attractive tiles from Stamen.

[http://maps.stamen.com](http://maps.stamen.com)

Just add the following code where you fire up maps, and drool over the difference.

    // replace "toner" here with "terrain" or "watercolor"
    var layer = "toner";
    var map = new google.maps.Map(document.getElementById("element_id"), {
        center: new google.maps.LatLng(37.7, -122.4),
        zoom: 12,
        mapTypeId: layer,
        mapTypeControlOptions: {
            mapTypeIds: [layer]
        }
    });
    map.mapTypes.set(layer, new google.maps.StamenMapType(layer));

### Ripple Effect - Matt P

A few weeks ago I discovered this gem (no, not the ruby kind) via twitter:
 - [How to add an animated ripple effect to water images](http://alligator.github.com/lake.js/)

### WTFWG - Carl
Hacker news continues to play the role of daily mail for devs and I do so love standardisation rage bait.

srcset gets in over picture QQ

[http://timkadlec.com/2012/05/wtfwg/](http://timkadlec.com/2012/05/wtfwg/)

## Programming and Architecture

### State Machines - Tony

Was a nice recap on [state machines](http://blog.markwshead.com/869/state-machines-computer-science/). It's a good thing for everyone to know and I've seen too many projects with complicated processes which would be more appropriate with a state machine.

### Smorgasbord - @Iron_Matt

[Ward Cunningham](http://www.drdobbs.com/architecture-and-design/240000393) interviewed on the occasion of winning the Dr Dobb's Excellence In Programming Award.
Wiki inventor, Agile Manifesto co-signatory, Smalltalk ninja, Sublime Text 2 user and undoubted troll-bait for Tilly due to his love for CoffeeScript *and* node.js.

['Brogrammer'? 'Rock Star'?](http://www.drdobbs.com/architecture-and-design/227400034)  Thanks but I'd rather collaborate with [these folk](http://www.drdobbs.com/architecture-and-design/227400034?pgno=2)
Especially Larry Wall, King of the Hawaiian Shirt-sported-in-the-workplace

I've been documenting [Non-functional Requirements](https://wiki.unboxedconsulting.com/wiki/Non-functional_Requirements) on our wiki as part of the ISO9001 work.  All contributions are welcome.  Just imagine if there were actual flaming torches on the wall monitoring our hardware...

### Rating Systems - Matt P

Imagine you have a site with some form of voting or rating sytem.  How should you sort the rated items? Your probable initial guess of "just calculate the average" is wrong - see why by reading [this](http://evanmiller.org/how-not-to-sort-by-average-rating.html)
(This one happily contains a ruby fragment)

## DBs

### Goodbye MongoDB - Carl

Everyone seems to be hating on mongo right now and having been in a similar situation I can sympathise with the reasoning behind [this article](http://www.zopyx.de/blog/goodbye-mongodb).

When someone from your database vendor comes into your office and suggests you throw more tin at a problem, you're in trouble.

## Sysadmin

### Server monitoring - @sren via @Iron_Matt

A [nice post](http://nerds.airbnb.com/monitoring-your-serverswith-fire ) from AirBnB about monitoring servers with fire lamps.
Harnessing the power of the elements for the purpose of monitoring is a brilliant way to focus teams on NFRs.

## Notices

###  7 Languages in 7 Weeks - Matt P

Starting next Wednesday, I will be undertaking a project called 7 Languages in 7 Weeks.  1-2 hours over 3 days is all that's required so if you are looking for another time-sink then look no further! It's currently me and 2 other friends taking part, but any one else interested would be more than welcome. We'll be covering Ruby, Io, Prolog, Scala, Erlang, Clojure and Haskell, and no prior experience in any of the languages is required. I've brought the book in with me today, for if anybody wants to take a gander.
