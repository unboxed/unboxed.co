---
weekly_roundup: true
title: 'Unboxed Roundup: Our links for w/c 1st February 2016'
date: '2016-02-05 14:30:00 UTC'
authors:
  - 'Murray Steele'
tags: # (Delete as appropriate)
- Culture

---

## Stop sleeping in your tests - [Andrew W](/team#andrew-white)

https://github.com/schneems/wait_for_it

We often see in tests a `sleep(10)` or something like it to make the suite pause whilst a process boots, an AJAX call happens, etc. and since the CI server often runs slower than your development machine you add a couple of extra seconds to reduce intermittent test failures. Now the new wait_for_it gem from Richard Schneeman at Heroku means you don't have to slow down your test suite unnecessarily waiting for processes to finish - just wrap the dependent code in a block passed to `WaitForIt.new` and delete those `sleep` calls.


## Change Management? No. ​_Change_​ Management - Claire K

http://bit.ly/1PCXg6n

I found this blog post whilst flicking through the pages on www about human response to technology evolution. Firms fight for new talent entering the market but it seems that  there is a greater need to maximise the value of employees’ knowledge than planning career development within a particular firm.

## On Net Promoter and Data Golems - [Andrew W](/team#andrew-white)

https://medium.com/on-human-centric-systems/on-net-promoter-and-data-golems-a4af7575fa5b#.g1jjf1vcl

Matt LeMay explains why Net Promoter scores should not be the be-all and end-all of how you measure the success of your product and the difficulty it has in representing complex social models of interaction.

## Web Development: Keep It Simple - Anson K

https://medium.com/@wob/the-sad-state-of-web-development-1603a861d29f

Angry man post lampooning what Node.js + javascript frameworks (aka SPA's) have done to modern websites. Behind the ridicule is a message to web developers to keep things lean, mean and use the simplest tool to get the job done

## Get free SSL certificates for your CloudFront/S3 website - [Andrew W](/team#andrew-white)

https://blog.webinista.com/2016/02/enable-https-cloudfront-certificate-manager-s3/index.html

If you host your website on S3 with CloudFront in front of it then the recently launched AWS Certificate Manager gives you free, renewable SSL certs that are easy to install. Tiffany B. Brown walks you through how to set it up and tells you about the common problems you may have doing it.

## Bye Bye Parse - [Tom S](/team#tom-sabin)

http://blog.parse.com/announcements/moving-on/

I’ve only fairly recently found Parse, but since being acquired by Facebook, it is being shut down. The service will run until early 2017.

## Performance Tuning Queries in PostgreSQL - [Andrew W](/team#andrew-white)

http://www.geekytidbits.com/performance-tuning-postgres/

Brady Holt gives you a quick primer on where to start looking for problems with your PostgreSQL queries.

## Track of the Week - Leanne N

This is a bit of nostalgia for me. We were young adults in Johannesburg in the late 80's before the end of apartheid. The world had imposed sanctions and British Equity members had voted not to perform in South Africa. All this meant that any live music was locally grown. The challenge at this time was for mixed race music groups to find venues where they were all allowed to play together. There were a few places where music was not so quietly changing the culture and pushing the boundaries of what was allowed to be said and done without being censored. One such venue was the ever popular Roxy Rhythm bar where we whiled away many evenings listening to the afropop of Mango Groove. Or at the Chelsea for the rock sounds of éVoid. The music at the time was often political - most effectively probably through the likes of bands like Johnny Clegg and Savuka.

So this song is one from Mange Groove - released in 1989 and reminiscing about Sophiatown in Johannesburg which was a vibrant mixed area before forced removals in 1955.

<iframe width="420" height="315" src="https://www.youtube.com/embed/ZU-PuNG-PIg" frameborder="0" allowfullscreen></iframe>
["Hellfire" by Mango Groove](https://www.youtube.com/watch?v=ZU-PuNG-PIg)
