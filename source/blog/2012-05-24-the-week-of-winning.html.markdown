---
layout: "blog"
weekly_roundup: true
date: "2012-05-24 23:00:00 UTC"
published: true
title: "The Week Of Winning"
author: "Chris Carter"
tags:
  - Rails
---

This weeks instalment is awesome, mainly due to the lack of content from its author. Enjoy!

## Railsy/Ruby Stuffs

### [RubyMotion](http://www.rubymotion.com/) (courtesy of Lee and Robert F)

It's a toolset that sits on top of the iOS development tools to allow you to use Ruby to build iOS applications.

this is something I've been speaking to Richard about trialling and will be doing so to build the UBXD expenses app in the near future.

[Live](http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&id=e1dc28d2b9&e=3fcba5cd8e) is a gem for RubyMotion implementing some of the ideas presented in Bret Victor’s awesome 'Inventing on Principle' talk. It interfaces with the REPL and allows you to control it from the comfort of your preferred text editor.

### [Objectify](http://rubyweekly.us1.list-manage1.com/track/click?u=0618f6a79d6bb9675f313ceb2&id=930588937e&e=3fcba5cd8e): A Better Way to Build Rails Applications (courtesy of Robert F)

Objectify is a framework that codifies good object oriented design practices for building maintainable Rails applications. In this post, James Golick explains the motivations.

### Spec Naming (courtesy of Murray)

A nugget from the StoryWeb specs:

    describe "is_recommendable_to_recipient?" do
      before :each do
        @workgroup = Workgroup.make!(:name => 'The Giraffes')
        @user = User.make!
      end

      context "for a workgroup" do
        it "should be true" do
          Story.make!(:published, :workgroups => [@workgroup]).is_recommendable_to_recipient?(@workgroup).should be_true
        end

        it "should be false" do
          Story.make!.is_recommendable_to_recipient?(@workgroup).should be_false
        end
      end

Those example names come down to: "is_recommendable_to_recipient? for a workgroup should be true" and "is_recommendable_to_recipient? for a workgroup should be false".  That's not super helpful when examining the specdoc output.  Take a moment to name your specs with care, so that I don't have to read the code within them to work out why it "should be true".  For me, better names would be:

"is_recommendable_to_recipient? for a workgroup should be true if the workgroup does not belong to the story" and
"is_recommendable_to_recipient? for a workgroup should be false if the workgroup belongs to the story"

Of course, there may be shorter ways to express this, and they would be fine too, but my point stands.  The names of all the specs, when read together should be enough to describe the behaviour of the object under spec without me reading the contents of the spec.

## Dev things

### Jenkins Power (courtesy of Jolyon (or James if you work in Starbucks))

You gotta love a [CI](http://jenkins-ci.org/) that enables you to specify a git repo and then runs tests on any branch that changes. But hold on just one second I hear you say, that's not ideal if you're working on a feature branch and the tests aren't yet passing. Easily solved. Just specify the branches that you want to run tests against in the [project configuration](https://jenkins.unboxedconsulting.com/job/Five_Capetown/configure). Power to the people.

### Cross-browser testing (courtesy of Austin)

An article outlining the set-up of (hopefully) optimal [browser testing](http://coding.smashingmagazine.com/2011/09/02/reliable-cross-browser-testing-part-1-internet-explorer/)

## More things!

### New EU Cookie Law (courtesy of Murray and Leo)

A [public domain letter](http://gilest.org/cookie-law-text.html) for web developers to send to their clients about the [new EU cookie law](http://www.theregister.co.uk/2012/05/18/cookie_law_ico/) that comes into law at the end of this month:

Seems pretty sensible and if you don't already know what the law is, this is as good and simple a rundown as any I've read.

### Colour Gradient Generator (courtesy of Matt P)

I found [this](http://www.herethere.net/~samson/php/color_gradient/) a couple of weeks ago when working on something with Matt F.
It allows you to specify a start colour, an end colour, and a number of steps, and it will generate the evenly spaced colours which lie between.
As a side note, some of the wording on the WebApp is a bit confusing. The number being asked for is the number of steps in total, i.e. the number of colours included in the range will be 1 higher than this, or 1 less than the number of new colors generating (not counting the start and end point you specify).

## Events

### Mobile Hack-a-Jam-a-Mashup-Athon (courtesy of Seb)

Theres is a [hack day](http://digitalshoreditch.com/hack/) being run at the Google Campus tomorrow as part of Digital Shoreditch.
I only found out about it today, looks like it could be interesting.

## Saving the best for last (courtesy of Luke)

### [Uncle Bob on the problem with ActiveRecord](http://blog.objectmentor.com/articles/2007/11/02/active-record-vs-objects)

### [Dr. Dobbs interviews Ward Cunningham](http://www.drdobbs.com/architecture-and-design/240000393) on the wiki, OO design, and all sorts of other stuff.
