---
weekly_roundup: true
date: "2012-09-07 09:48:00 UTC"
published: true
title: "The squish of the week"
authors:
  - "Jolyon Pawlyn"
tags:
  - Rails
---

##ActiveSupport Method of the Week: [squish](http://api.rubyonrails.org/classes/String.html#method-i-squish)
I am guilty of writing:

	  ' some   string  '.split(' ').join(' ')
to enforce single spacing between words but clearly a bit of squishing would be far better.

##[dropbox.js](https://tech.dropbox.com/?p=345) Murray
dropbox.js - a library for accessing dropbox securely in js.  Makes it easy to write static js-only applications that have secure storage of files and can be hosted directly from your dropbox account.  The write-up is a bit long winded, being a discussion of they why and the how of the library and a description of an app built using it and the api design.  Interesting though if you have the time.

##[JavaScript switcher extension for Chrome](https://chrome.google.com/webstore/detail/geddoclleiomckbhadiaipdggiiccfje) Rob
Yep, it does what it says. With one single click on the extension on the Chrome toolbar it switches on/off JavaScript, and automatically reloads the page. No more getting-lost-in-Chrome-Settings for ubxd!

##[Rails in Realtime](http://layervault.tumblr.com/post/30932219739/rails-in-realtime) Pawel
Using memcached, Socket.IO, and Russian doll caching to make Rails near real-time without having to bother with frameworks like Backbone or Ember

##[Responsive Design testing with Screenqueries](http://screenqueri.es/) Rob
Great free tool for testing responsible sites. There is a lot of different devices (mobiles and tablets), screen dimensions and screen orientations to choose from.

##[Media Queries](http://mediaqueri.es/) Rob
A nice list of inspirational websites using media queries.

##[Bundler auto update](https://github.com/versapay/bundler-auto-update) Murray
'bundler-auto-update is a ruby gem that updates all gems of your Gemfile to the most recent version that does not break your tests'. Probably useful only if you have confidence in your test suite, but if you do, it could definitely be worth running this if you've spent a few months ignoring a project.  Of course, it's one thing to say that your app is running on the latest version of some-gem, quite another to investigate how you were using that gem and see if you should change your app to use a newer / better API, etc.

I imagine this would be particularly useful for gems that you are using github HEAD for (or your own fork) because of a bug.  It's good practice to write a test describing the bug in your app when you change your gemfile to point at git.  If you do that then this tool could try changing git gems to released gems as well as just upgrading released gems.  Maybe worth looking at as an extension if it doesn't already do it.
