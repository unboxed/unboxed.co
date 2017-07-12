---
date: "2014-04-23 11:19:00 UTC"
published: true
title: "Innovation days - developing in Meteor"
authors:
  - "Tom Sabin"
tags:
  - Innovation
  - Rails
---

Here at Unboxed, employees are given the opportunity to take innovation days: time allowing us to learn new and interesting things. I took this opportunity to complete my personal website - a photography portfolio that would display a subset of my photos hosted on Flickr. A project long overdue.

I began developing a Sinatra app that would use [Flickraw](https://github.com/hanklords/flickraw) (a Ruby gem that neatly wraps Flickr's API) to request the photos and store the response in Redis. Shortly after completing the server side code, I moved to another project, working on an app built in Meteor. A few days exposure to Meteor and I was keen to rewrite my Sinatra app using the new platform.

It was decided that the '[Flickr fetch](https://github.com/tomsabin/flickr-fetch)' functionality should be split into its own Ruby script, allowing me to update the stored photos on request (after all, I wasn't going to be updating this album enough to justify the needed for an automated solution). This decision also simplified the web app in the (re)making: all it had to do is talk to the database, grab the data (regardless of whether it was from Flickr or not) and present it to the client - [simples](https://s3-eu-west-1.amazonaws.com/unboxed-web-images/4e7602cef7f70c3551d6fca13ecb4b12.jpg). All the data manipulation now existed only in the script, meaning that any sort of photo could be in the database, regardless of whether it was sourced from Flickr or not. This allows for other services and local images to be used in the future.

![image](https://dl.dropboxusercontent.com/u/2217931/tomsabin-blog-post.png)

A couple of hours was spent to get the main functionality of the Meteor app up and running, using the brilliant [Discover Meteor](https://www.discovermeteor.com/) book as guidance. With the initial designs matured and the knowledge of [Neat](http://neat.bourbon.io/) from another project behind me, I attempted to create a slick, simple and clean interface in a mobile first manner.

Meteor was an exciting platform to work with. Putting this together with other frameworks and tools learnt at Unboxed over the past few months, I have thoroughly enjoyed developing the app, sculpting it into the start of what I've always envisioned it to be. If you'd like to cast your eyes over the finished product, you can visit [tomsabin.co.uk](http://tomsabin.co.uk). However if you'd rather see the code behind it, compare the [old, unfinished Sinatra source code](https://github.com/tomsabin/sinatra-photography-portfolio) to the [new, shiny Meteor code](https://github.com/tomsabin/photography-portfolio).
