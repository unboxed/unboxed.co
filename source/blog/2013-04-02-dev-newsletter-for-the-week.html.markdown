---
layout: "blog"
date: "2013-04-02 16:01:00 UTC"
published: true
title: "Dev Newsletter for the week"
author: "Leo Cassarani"
tags:
  - Rails
---

An unusually short newsletter for an unusually short week.

# Rails' Insecure Defaults ([Murray](http://www.unboxedconsulting.com/people/murray-steele))

http://blog.codeclimate.com/blog/2013/03/27/rails-insecure-defaults/ 

This article starts with some that have recently been fixed or are good defaults and then lists some that still exist.  The problem is that a lot of the still existing ones seem quite tenuous.   For example two of them are about exploits that exist if you are using WEBrick in production; I'm almost certain no-one is.  Still, I shouldn't complain as it's good to be reminded of these things, and it did point me at two interesting things I'd never heard of:

* [http://rails-sqli.org/](http://rails-sqli.org/) - a site dedicated to explaining where *by design* ActiveRecord allows direct SQL as params.  A good resource to make sure we aren't allowing user input to become sql-injection

* [https://github.com/twitter/secureheaders](https://github.com/twitter/secureheaders) - a gem to add a bunch of http headers to your app that will make it more secure.  We should certainly understand what is going on in this gem, and why the headers help, but it doesn't hurt to have someone else do it for us.

# Great breakdown into a DDoS that "almost broke the internet" ([Pawel](http://www.unboxedconsulting.com/people/pawel-janiak))

http://blog.cloudflare.com/the-ddos-that-almost-broke-the-internet

# A nice way to do split lists with CSS - ([Andrew M](http://www.unboxedconsulting.com/people/andrew-mitchell))

Ever wondered how to split something which semantically is a single list but is visually split into columns? You could use the columns CSS property, however that's not entirely compatible with all browsers yet (yep IE!). Try this instead!
https://coderwall.com/p/etf_ba
