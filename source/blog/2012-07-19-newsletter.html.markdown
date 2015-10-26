---
layout: "blog_article"
weekly_roundup: true
date: "2012-07-19 23:00:00 UTC"
published: true
title: "Newsletter"
author: "Grant Speelman"
tags:
  - Rails
---

## ActiveSupport Method Of The Week : [ReverseMerge](http://as.rubyonrails.org/classes/ActiveSupport/CoreExtensions/Hash/ReverseMerge.html)

Allows for reverse merging where its the keys in the calling hash that wins over those in the other_hash. This is particularly useful for initializing an incoming option hash with default values:

    def setup(options = {})
      options.reverse_merge! :size => 25, :velocity => 10
    end

The default :size and :velocity is only set if the options passed in doesn‘t already have those keys set.


## Innovation Days & Conferences

If there's some technical itch you want to scratch but don't get to in your day-to-day client work, book an innovation day and get cracking on it.  At our last dev afternoon in the London office we identified [a bunch of tasks that would be perfect for an innovation day](https://wiki.unboxedconsulting.com/wiki/Dev_Day#Not_Done).  Please remember to book them!

We're keen that Unboxed developers get on stage and talk about things.  We're also aware the client work means you might not have the time, but that's another use for innovation days are for!  If you have a topic idea, book an innovation day or two to prepare it and then submit it to all the conferences you can.  A good resource for ruby conferences is [rubythere.com](http://rubythere.com/), but there are plenty of other conferences out there to try out at.  Even if you don't get through the CFP Unboxed is likely to pay for the ticket to the conf.

You've got up to 10 innovation days, so don't be afraid to use them!

## Dev Submissions

### Pawel J

[How I learned Backbone.js, Three.js & GLSL in one week • @GreWeb](http://blog.greweb.fr/2012/07/how-i-learned-backbone-js-three-js-glsl-in-one-week/?utm_source=javascriptweekly&utm_medium=email)

[Building a MongoDB Clone in Postgres: Part 1 - LegitimateSounding.com](http://legitimatesounding.com/blog/building_a_mongodb_clone_in_postgres_part_1.html)

[Hacker Says quotes - awesome quotes](http://hackersays.com/2f2a78)

### Grant S

The [Ruby Toolbox](http://ruby-toolbox.com/) is another invaluable resource for Ruby and Rails developers

### Attila G

#### Firefox 15 plugs the add-on leaks
[http://blog.mozilla.org/nnethercote/2012/07/19/firefox-15-plugs-the-add-on-leaks/](http://blog.mozilla.org/nnethercote/2012/07/19/firefox-15-plugs-the-add-on-leaks/)

I remember when I've seen Firefox cheekily swollowing about 2GBs of memory on my Mac. That was the time I decided to give up on it and turn to the alternative browsers when it comes down to development. Let's be honest, Firefox is not the only browser with a decent inspector anymore, in fact Google Chrome's web inspector and development tools of the upcoming Safari 6 seem to be pretty decent. Honestly I don't have much hope for Firefox, but at least it's good to see that there's been some efforts towards fixing its biggest issue. (At least that's the way I see it.)

Firefox 15 is expecterd to be released on 28th of August.

#### Are we playing yet?

Have you checked your browser's HTML5 audio implementation recently? Thanks to [SoundCloud's initiative](http://areweplayingyet.org/) to bring more harmony into HTML5 Audio implementations, it started to look like HTML5 audio is actually getting widely accepted and getting closer to be  feature complete across multiple browsers. It's looking pretty good. [Chrome Canary](https://tools.google.com/dlpage/chromesxs/) scores 41/44 as of today and there's a burndown of all other browsers' scores too.

#### OAuth 2 drafts

You must be familiar with Github or Facebook authentication. But do you know how that actually works?

Go, scan through the draft to get a better understanding what the security implications are and how this protocol solves the most common problems. You would be amazed how much traffic goes between clients and servers Go, [read it](http://tools.ietf.org/html/draft-ietf-oauth-v2-30). I did it earlier this week and now it makes much more sense. It's not too difficult, really.

#### Video to watch this week

[Keynote: Architecture the Lost Years by Robert Martin](http://www.youtube.com/watch?v=WpkDN78P884)

## That's it...

Have a great weekend guys.
