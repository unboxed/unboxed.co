---
weekly_roundup: true
date: "2012-06-07 23:00:00 UTC"
published: true
title: "News News News"
authors:
  - "Robert Pataki"
tags:
  - Rails
---

##Tips for successful pair programming (Lee Richmond)

Lee wrote his first Unboxed blog post about pair programming. I have paired myself with Lee and found his teqhnique working well and very useful. I especially liked the Pomodoro approach for timing. Nice one Lee!


##Custom DNS tool that resolves wildcard DNS (Matt Peperell)
[http://xip.io/](http://xip.io/)

e.g:

    10.0.0.1.xip.io               resolves to   10.0.0.1
    something.10.0.0.1.xip.io     resolves to   10.0.0.1
    somethingelse.10.0.0.1.xip.io resolves to   10.0.0.1

There are some caveats though. [http://news.ycombinator.com/item?id=4082017](http://news.ycombinator.com/item?id=4082017) has details but the tl;dr version is "Fine if you're using it for webservices, probably not fine if you're testing DNS itself"


##HTML5 async (Joerg Diekmann)
[http://davidwalsh.name/html5-async](http://davidwalsh.name/html5-async)

HTML5 now supports both *defer* and *async* to load javascript source files. Both of these load JS scripts asynchronously. What you may ask does "asynchronous" mean? Well, let me enlighten…. Kidding. The difference between the two is that a script tags with *defer* will be guarantee to execute in order as they appear in your document, whereas *async* executes as soon as it is downloaded.


##gmaps.js (Carl Whittaker)
[http://hpneo.github.com/gmaps/](http://hpneo.github.com/gmaps/)

Using the google maps api is a slog. gmaps.js hides the uglyness giving you a pretty straightforward api so you're not forced to trawl those nasty google api docs.


##Set flash in redirect_to (Joerg Diekmann)
[http://archives.ryandaigle.com/articles/2009/12/20/what-s-new-in-edge-rails-set-flash-in-redirect_to](http://archives.ryandaigle.com/articles/2009/12/20/what-s-new-in-edge-rails-set-flash-in-redirect_to)

Did you know - and please, I hope not everybody knows - that you can pass your flash message along with a redirect all in one sugary sweet line?
I also discovered a technique I have longed for for a very long time: Passing a URL with the flash message.

    redirect_to posts_path, :alert => "You cannot do that", :flash => { :url => post_path(@post) }

You can access the URL with `flash[:url]` … Obvious really. But elusive.


##Upcoming JavaScript development related HTML5 features (Murray Steele)
[http://weblog.bocoup.com/third-party-javascript-development-future/](http://weblog.bocoup.com/third-party-javascript-development-future/)

A discussion on some upcoming features for html(5?) that relate to javascript development (mostly about scoping and security).  Despite the whimsical tone of the blog post, the author pretends to have visited the future and talks about how they use these features there all the time and are better for it, it's a good overview of these features.


##Greensock Animation Platform V12 now supports JavaScript (Robert Pataki)
[http://www.greensock.com/](http://www.greensock.com/)

Greensock has been the most handy and most powerful animation tool for ActionScript. V12 is out and yesssss, it supports JavaScript! Check out the project page, and try that banner demo, pretty impressive!

[http://www.snorkl.tv/2012/05/banner-style-animation-with-greensock-powered-javascript/](http://www.snorkl.tv/2012/05/banner-style-animation-with-greensock-powered-javascript/)
