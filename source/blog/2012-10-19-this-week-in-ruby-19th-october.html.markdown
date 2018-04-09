---
weekly_roundup: true
date: "2012-10-19 15:12:00 UTC"
published: true
title: "This Week in Ruby, 19th October"
authors:
  - "Leo Cassarani"
tags:
  - Rails
---

# ActiveSupport Method of the Week: [String#inquiry](http://api.rubyonrails.org/classes/String.html#method-i-inquiry)

Wraps the current string in the `ActiveSupport::StringInquirer` class, which gives you a prettier way to test for equality. Example:

    env = "production".inquiry
    env.production?  # => true
    env.development? # => false

For the record, this is actually how Rails implements things like `Rails.env.production?` behind the scenes.

# 7 Patterns to Refactor Fat ActiveRecord Models (Murray)

An interesting article about how to take the next step from Skinny Controller, Fat Model towards Skinny Everything.  Rather than just suggesting pulling everything out into Modules, which just hides the issues it actually gives some good suggestions of alternatives.  I think the article would benefit from before and after code snippets, as the "this is how I do it" snippets don't really tell the whole story; it's not clear how they are used in context, nor how, for want of a better word, weird a rails app would look using these approaches.  Still, it's a good article and the approaches seem sane.

http://blog.codeclimate.com/blog/2012/10/17/7-ways-to-decompose-fat-activerecord-models/

# RubyTapas: Short screencasts of gourmet Ruby code (Leo)

A new screencast series from Avdi Grimm (who needs no introductions). Personally I love the focus on short, simple nuggets of Ruby information, and I have found the series very enjoyable so far. Four free episodes have been published already, and you get eight more (and counting) when you subscribe.

http://devblog.avdi.org/rubytapas/

# Responsivator (Rob)

Another great tool for testing responsive layouts. This one looks a bit better, then the others (http://screenqueri.es/ for instance) because you can see all the 'device' resolutions on one page. You also can specify what device resolutions you want to use.

http://dfcb.github.com/Responsivator/

# GreenSock JS Tutorial (Rob)

Greensock is a fantastic JavaScript animation framework that performs above and beyond everything else currently available to those of us working with web design.
Though only few people know of it in the JavaScript world it’s got a huge audience in the world Flash, where it’s about as widely used as jQuery is among JavaScript-folks.

http://ahrengot.com/tutorials/greensock-javascript-animation/

# My new favourite Rails trick: `:disable_with` (Andrew)

Using remote js forms? You will find simply disabling the button on click will likely disable the button before submitting the form, which is well… annoying but reasonable. Instead use the following to force your submit to disable the link until the form is submitted.

    :disable_with => 'Please wait..'


# Javascript, does it require classes? (Andrew)

http://www.nczonline.net/blog/2012/10/16/does-javascript-need-classes/

# Rails 4 Whirlwind Tour (Jolyon)

[Good overview of Rails 4 features](http://vimeo.com/51181496) by Andy Lindeman at the [Atlanta Ruby User Group](https://twitter.com/atlrug).

# XPDay 2012 (Ben)

Ben wants you to go to XPDay London. 26-27th November.

http://xpday.wordpress.com/

# A thought on the minutiae of European law (Matt Frank)

The provisions of the United Kingdom's Data Protection Act apply to data stored or transmitted in the UK, right? Wrong. Oh, so it's the EU then?  Wrong again.  They're applicable to all countries within the European Economic Area which is distinct from the European Union: http://script-ed.org/?p=324

Can't tell your EEA from your EFTA or your CoE? Help is at hand: http://bit.ly/eu-venn

# Lightning captured at 7,207 images per second (Ben)

Ben sends in this pretty impressive high-speed camera video of lightning striking Earth. If you want to know more, be sure to also check out the ["What If?" article on lightning](http://what-if.xkcd.com/16/).

http://www.youtube.com/watch?v=_1mB5rM8WHU
