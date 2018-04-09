---
weekly_roundup: true
date: "2012-06-28 23:00:00 UTC"
published: true
title: "This Week In Dev"
authors:
  - "Chris Carter"
tags:
  - Rails
---

[Enter food-related obligatory dev-newsletter pun here].

##[TinyPNG](http://tinypng.org/) (via Lee)

Advanced lossy compression for PNG images that preserves full alpha transparency.

##[PlaceKitten](http://www.placekitten.com/) (via Alan)

Technically submitted by Alan, but credit goes partially to Matt P for submitting this two weeks ago.

Quote from last time this was submitted: "Stock images of kittens, sizeable to whatever size you can need. Useful when mocking up a site. Like the lorem ipsum, but with images."

##[Flowchart: How to Retinafy Your Website](http://mir.aculo.us/2012/06/26/flowchart-how-to-retinafy-your-website/) (via Ben)

With Retina screens all around us, it’s time to take the plunge and retinafy your website or webapp.

##[Turing Centenary Speech (New Aesthetic)](http://www.wired.com/beyond_the_beyond/2012/06/turing-centenary-speech-new-aesthetic/) (via Ben)

Self explanatory really - have a read.

##[ActiveRecord Niceness](https://s3-eu-west-1.amazonaws.com/unboxed-web-images/a66243ce3c7f82cc02d5a0137ee1ad32.gif) (via Joerg)

Here's a thing I never knew about ActiveRecord, and not sure when it slipped in: So - imagine you have the following setup:

    class Contact < ActiveRecord::Base
      has_many :addresses
    end

    class Address < ActiveRecord::Base
      belongs_to :contact
    end

Then, contact.address_ids gives you an array of ids of all your addresses.

##[SQL Binding](https://s3-eu-west-1.amazonaws.com/unboxed-web-images/f1a7a42c32ccfe3b879acbe01f79d661.gif) (via Jolyon)

I was convinced writing sql (or sequel) to use bind variables must be better than hardcoding from a performance perspective but my confidence was shaken when reading about [prepared statements](http://patshaughnessy.net/2011/10/22/show-some-love-for-prepared-statements-in-rails-3-1).
Mind you, from a sql injection and readability perspective, I think binding remains preferable.

##[Destroy All Software](http://destroyallsoftware.com) (via Attila)

Most of us like RailsCasts, right? OK, screencasts are great to demonstrate and teach people about programming. Now, it became clear to me that not everybody knows about the website in subject. It features short (10-15 mins long) very focused technical screencasts, most of the time related to Ruby (although sometimes it covers Python and other related techness as well). Some of the most interesting things DAS covered in the past:

* How to implement RSpec from scratch
* How and why to avoid nil
* Pretty git logs
* etc.

The catalog contains about 70 screencasts as of now. All I can say is that it became one of my favourite sources to learn more about software architecture, more specifically about how to do advanced things in Ruby. This guy is extremely clever, very opinionated yet reasonable. Very good material, definitely worths the subscription. (Yeah it's not free but I think it's reasonably priced.)

You should also watch [this lightning talk](https://www.destroyallsoftware.com/talks/wat/) by the same guy if you haven't seen it yet, very entertaining.

##[Rails 4.0 Sneak Peek: Queueing](https://s3-eu-west-1.amazonaws.com/unboxed-web-images/3fd222d8da8385a83687e1ab4de29a9e.gif) (via Attila)

[Seen this?](http://reefpoints.dockyard.com/ruby/2012/06/25/rails-4-sneak-peek-queueing.html)

##[JQuery 2.0](http://blog.jquery.com/2012/06/28/jquery-core-version-1-9-and-beyond/) (via Robert P)

JQuery 2.0 is coming early 2013. One of the highlights ahead is that they will remove all support for IE6/7/8 browsers.

##[jQuery Vector Maps using SVG](http://jqvmap.com/) (via Robert P)

Not as great as GMaps, but much lighter and it actually looks all right. Supports Explorer 6-8 using VML.

##[Repo.js](http://darcyclarke.me/dev/repojs/) (via Robert P)

If you ever wanted to include github repos on your site...

##[Pow 0.4.0 with xip.io support](http://37signals.com/svn/posts/3191-announcing-pow-040-with-xipio-support) (via Attila)

Did anybody try this out? I would love to know if anybody has done something with this.

##[iOS 6 Beta Updates](http://www.apple.com/ios/ios6/) (via Attila)

If you have installed the beta on your phone as soon as Apple made it available to the iOS devs, you may want to update your software on your phone. Funnily enough iTunes won't do this for you (I guess it does not intend to handle beta upgrades) but your phone can upgrade itself. Go to `Settings -> General -> Software Update` and voila! Just a heads up.
