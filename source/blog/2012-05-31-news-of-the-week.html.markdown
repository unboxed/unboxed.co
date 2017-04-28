---
weekly_roundup: true
date: "2012-05-31 23:00:00 UTC"
published: true
title: "News Of The Week"
authors:
  - "Will Tomlins"
tags:
  - Rails
---

##MS-provided IE testing VMs (Muz)##

[https://github.com/xdissent/ievms](https://github.com/xdissent/ievms)

Simple scripts to slap some of those MS-provided IE testing VMs together and avoid the Windows Genuine Advantage thing timing them out after 30 days.  I've not tried it, because I have one of our Windows XP licenses installed in VirtualBox and MultiIE installed to give me 6, 7, & 8.  However activating that XP license did mean I had to phone MS and convince them I wasn't a scammer, so this might be easier than that.  And certainly easier than hunting down the vms someone else in the company has already prepared.

Also has the phrase "comically large files" in the README.  WHAT IS NOT TO LIKE?


##Modifier keys and pushState (Carl)##
A common pattern is to intercept clicks on anchors and pass them through xhr. This can lead to some pretty frustrating usability issues with tabbed browsing among other things. This article suggests how to properly intercept anchors.

[http://dev.tenfarms.com/posts/proper-link-handling](http://dev.tenfarms.com/posts/proper-link-handling)

##Sinon.JS (Carl)##
I've been using this for a while and it's simply the best way i've found to test async javascript. If you haven't seen it before give it look.

[http://sinonjs.org/](http://sinonjs.org/)

##D3 (Carl)##
We're using this on storyweb to create visualisations of user metrics. It's pretty damned awesome (check out the demos). When coupled with Raphael to do the rendering we've even got it running in IE7.

[http://d3js.org/](http://d3js.org/)

##Zeroes (Carl)##
###Ohh javascript###

[http://zero.milosz.ca/](http://zero.milosz.ca/)


##Vanity A/B testing (Andy)##

So after doing a lot of prototype based work with Reevoo of late i have been looking into ways which we could carry out A/B tests on our projects. Unfortunately 'Limited Exposure', an app created here at Reevoo by Tom, is currently not available publicly and requires a little thought towards making this open source (it's in the pipeline though!). So instead i'll l;et you all take a look at this which seems to be a better implementation in ruby land (unlike LE which uses an api which can be hit using js.
[http://vanity.labnotes.org/#intro](http://vanity.labnotes.org/#intro)


##be_valid_asset update (Jolyon)##

[be_valid_asset](https://github.com/unboxed/be_valid_asset) has been updated and released as version 1.2.1. Version 1.2.0 was an unfortunate dogs dinner. Tests now run using rspec2 and the be_valid_xhtml matcher has been deprecated and replaced by the more generic and html5 friendly be_valid_markup.


##Chris' Rack (Chris)##

I built a rack extension for serving highlighted source code that uses GitHub's Pygments gem. It might be of use.

[https://github.com/tuzz/rack-source](https://github.com/tuzz/rack-source)


##Rails updates (Leo)##

[http://weblog.rubyonrails.org/2012/5/31/ann-rails-3-2-4-has-been-released/](http://weblog.rubyonrails.org/2012/5/31/ann-rails-3-2-4-has-been-released/)

Rails 3.2.4 has been released. Most notably, it provides fixes for two separate SQL injection bugs.

I encourage you all to read through the two security announcements and perhaps consider applying the patch to all our Rails 3 projects (in situations where upgrading to 3.2.4 is impossible, of course). Neither of them are incredibly serious vulnerabilities, but naturally it's best to err on the side of caution.

On that note, 3.2.5 was also released, as a regression was discovered in 3.2.4. So if we want to upgrade some of our newer apps (e.g. Apps for Good), then 3.2.5 is where it's at.


##The Long one (Attila)##

###Meteor. Yet another JS framework? Not quite...###
[http://meteor.com](http://meteor.com)

I've seen quite a few JS frameworks, there's Express, Mojito ([http://developer.yahoo.com/cocktails/mojito/](http://developer.yahoo.com/cocktails/mojito/)) and about another gazillion different MVC, MVVM and MMVVCXYZ frameworks and such. Most of them look nice and promising for the first sight, then turn out to be a pain to work with.

And there's Meteor. "Meteor is a set of new technologies for building top-quality web apps in a fraction of the time". That is supposed to be the same rapid prototyping that Rails became famous for.

But anyway, it's not just another framework on top of Node. To me it is more interesting, mainly because of the following reasons:

* Meteor is "just" a framework that intelligently glues "smart packages" together
* It is supposed to be highly modular
* You are not restricted to use CoffeeScript or MongoDB or Backbone, but you can if you want to. Anything that you can wrap within a "smart package".
* Smart packages wrap up additional functionality and can hook into the stack
* You can use the same API on both client- and server-side devices, meaning you write non-repetative code

What really blew me away is when I've seen how you can use Mongo commands within the browser to work with "models" and it all gets synchronised automatically with the server and other connected clients.
This is a very interesting new approach if you think about it, that's probably the reason why they got $9M in funding recently. [http://gigaom.com/cloud/scoop-meteor-gets-9m-in-funding/](http://gigaom.com/cloud/scoop-meteor-gets-9m-in-funding/)

* You should totally watch the screencast: [http://meteor.com/screencast](http://meteor.com/screencast)
* You should read what is the mission of the project: [http://meteor.com/about/mission](http://meteor.com/about/mission)
* You should totally download it and fiddle around with it

###Up to date ubxd-ruby1.9.3 debian package###

You may not know but we have our own Debian package that we use to install Ruby on our servers. Alex has started it, currently it has 1.9.3-p125 packaged in it. As of today, version 1.9.3-p194 is the latest production release of Ruby so therefore our package is outdated. Now, I like up-to-date software and given that Alex is not here anymore, I decided to pick this up where he left it. In the past I've done no debian packaging but I learned all the basics in 2 days during my holiday recently. I am going to try upgrading the package but it would be great to know if anybody else has done something similar to this before and could potentially collaborate with me on this.

Funnily enough I've found no up-to-date version on Ubuntu's Launchpad so it's time to make one. For a fact I know that other (non-ubxd) people are using our publicly available APT repository too, here's a gist on how to make use of it:
[https://gist.github.com/1472705](https://gist.github.com/1472705)

I am also planning on applying some of the available performance and improved garbage collection patches taht are available.

Hit me up if you are interested in helping out.


##New Rails spell (Will)##

I just love it when you think to yourself 'I reckon there's probably a method which does this', and there is. Here's one I I recently discovered which clears up a commonly seen and somewhat ugly pattern.

Lets say you have a model, 'Cindy', and Cindy has\_many AnnoyingFriends.  Lets also say you have a form to edit Cindy (a bit like plastic surgery).  That form must contain a multiple select where you can choose which annoying\_freinds are associated with Cindy.  Additionally when an annoying\_friendship is broken, that annoying\_friend must be DESTROYED.  Your form posts an array of annoying\_friend\_ids which should be associated with Cindy.

Typically you will have a nasty block of code in you controller somewhere which does something along the lines of this:

* Find all annoying\_friends attached to Cindy which are not in `params[:annoying_friend_ids]` and DESTROY them.
* Throw out all ids in `params[:annoying_friend_ids]` which are already attached to Cindy
* Create new friendships for the remaining ids.

_Happily we don't need to do this again... ever..._

Maybe everyone else already knows about this, but rails generates a couple of methods for you.

This works:

`cindy.update_attribute(:annoying_friend_ids, params[:annoying_friend_ids])`

or

`cindy.annoying_friend_ids = params[:annoying_friend_ids]`

and rails will take care of the rest of the mess.  Rails does make sure that actual records exist for each of the ids passed in. Additionally there's a getter which is useful for pre-populating form input values.

I've got no idea how long these magic methods have been there since I can't find any documentation on them.
