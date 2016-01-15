---
weekly_roundup: true
date: "2014-07-04 12:30:00 UTC"
published: true
title: "Workin' dev to five, what a way to make a livin'"
author: "Murray Steele"
tags:
  - Rails
---

## Patterns - [Henry](/people#henry-turner)

[http://library.uniteddiversity.coop/Ecological\_Building/A\_Pattern\_Language.pdf](http://library.uniteddiversity.coop/Ecological_Building/A_Pattern_Language.pdf) (warning - 45 MB PDF)

My Dad, a town planner and landscape architect, often bemoans how the software industry has utilised the concept of patterns better than his own from which the term came. If you haven’t seen [A Pattern Language by Christopher Alexander](http://library.uniteddiversity.coop/Ecological_Building/A_Pattern_Language.pdf) it’s pretty interesting to flick through and see what he was trying to achieve.

## Rails 404 pages - [Andrew W](/people#andrew-white)

[http://blog.jerodsanto.net/2014/06/a-step-by-step-guide-to-bulletproof-404s-on-rails/](http://blog.jerodsanto.net/2014/06/a-step-by-step-guide-to-bulletproof-404s-on-rails/)

Despite what this article suggests, it's a seriously bad idea to set your routes as the failure app - don't do it!  When your application is handling an exception, you don't want to run it through the stack again.  For example: if a ``before_filter`` in the ``ApplicationController`` raises an exception feeding it back into the routes will just raise the exception again!  Rails will protect you from shooting yourself in the foot by [capturing an exception from the failure app](https://github.com/rails/rails/blob/master/actionpack/lib/action_dispatch/middleware/show_exceptions.rb#L41-51) and [rendering a simple text string](https://github.com/rails/rails/blob/master/actionpack/lib/action_dispatch/middleware/show_exceptions.rb#L18-L22), but otherwise you could end up putting yourself into an exception loop.

If what you want is to have 404 pages rendered from an ERb template, you can do this by just having the catch-all route without setting the failure app (his step 1).

If you want to write a custom failure app that's okay - just don't use [``ActionDispatch::Routing::RouteSet``](https://github.com/rails/rails/blob/master/actionpack/lib/action_dispatch/routing/route_set.rb) as it's not designed for it!

## Google Design - [Murray](/people#murray-steele)

[http://www.google.com/design/spec/](http://www.google.com/design/spec/)

One of the things announced at Google IO this year was [Material Design](http://www.google.com/design/spec/) which is Google's design documentation for what their applications will look like.  You can already see hints of it in the [new maps interface](https://www.google.co.uk/maps/preview), and the [gmail client on iOS](https://itunes.apple.com/app/gmail/id422689480?mt=8), but I expect that [Android L](https://en.wikipedia.org/wiki/Android_L) will be the real unveiling.  There's lots of good stuff, particularly at the start of the document where it's more general about how objects and controls should react to each other.  As it progresses it becomes less generally useful as it goes into specifics for how to layout the padding on text-boxes, and other controls to make them fit in with Material Design.  Even if you aren't writing applications that you want to fit in with Material Design it would be worth reading this document to get a feel for some current thinking in UX.

## Homebrew wrapper around launchctl - Andrew M

[http://robots.thoughtbot.com/starting-and-stopping-background-services-with-homebrew](http://robots.thoughtbot.com/starting-and-stopping-background-services-with-homebrew)

If you’re anything like me you probably keep forgetting the command to [launchctl](https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/launchctl.1.html) that thing you need to start up. Make life easier on yourself! [Homebrew](http://brew.sh) provides a nice service wrapper around launchctl to make it easier to start and stop services you require to be running.
