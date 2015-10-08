---
layout: "blog"
date: "2012-11-23 14:42:00 UTC"
published: true
title: "Return Of The ActiveSupport method of the week (Mark Morrison style)"
author: "Carl Whittaker"
tags:
  - Rails
---

## ActiveSupport method of the week File#atomic_write (thanks to Leo)
<code>atomic_write(file_name, temp_dir = Dir.tmpdir)</code>

Write to a file atomically. Useful for situations where you don’t want other processes or threads to see half-written files.

    File.atomic_write("important.file") do |file|
      file.write("hello")
    end


If your temp directory is not on the same filesystem as the file you’re trying to write, you can provide a different temporary directory.

    File.atomic_write("/data/something.important", "/data/tmp") do |file|
      file.write("hello")
    end


## A Few New Things Coming To JavaScript
Addy Osmani on some of the additions to JavaScript in ES6. Object.observe() \*drool\*
[http://addyosmani.com/blog/a-few-new-things-coming-to-javascript](http://addyosmani.com/blog/a-few-new-things-coming-to-javascript)

***Murray found something interesting about Spotify's process.***
## Scaling Agile at Spotify
Long piece (it's a PDF? why?) about how Spotify have retained small teams and agile culture despite having a large number of employees split across several offices.
[https://dl.dropbox.com/u/1018963/Articles/SpotifyScaling.pdf](https://dl.dropbox.com/u/1018963/Articles/SpotifyScaling.pdf)

## JSFeat: JavaScript Computer Vision Library
JavaScript image transformation and object detection. Check out the face detection demo which uses WebRTC.
[http://inspirit.github.com/jsfeat/](http://inspirit.github.com/jsfeat/)

***Lee found some front end goodness (and a trove of Rails 4 bits)***
## CSS Comb
Not sure if I've submitted this one before but its quite a nice tool for anyone not so great at CSS to help tidy up after themselves and also has a sublime plugin 
[http://csscomb.com](http://csscomb.com)

## Rails 4 links compilation
A whole load of Rails 4 links and articles all in one place 
[http://blog.wyeworks.com/2012/11/13/rails-4-compilation-links/](http://blog.wyeworks.com/2012/11/13/rails-4-compilation-links/)

An interesting talk by Ilya Grigorik on some of the things we may or may not already know about using Chrome in development 
[http://www.igvita.com/2012/11/14/wait-chrome-devtools-could-do-that/](http://blog.wyeworks.com/2012/11/13/rails-4-compilation-links/)

***Matt P was looking into those pesky cukes***
## Scenarios are not Acceptance Criteria
A blog post by @chrismdp on not conflating cucumber scenarios with acceptance criteria.
[http://chrismdp.com/2012/11/scenarios-are-not-acceptance-criteria](http://chrismdp.com/2012/11/scenarios-are-not-acceptance-criteria)

***Leo found***
## Hide the ORM like you’re ashamed of it
[http://weblog.therealadam.com/2011/10/09/your-frienemy-the-orm/](http://weblog.therealadam.com/2011/10/09/your-frienemy-the-orm/)
