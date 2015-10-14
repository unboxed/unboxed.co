---
layout: "blog"
weekly_roundup: true
date: "2012-10-05 15:00:00 UTC"
published: true
title: "What 5th October says"
author: "Grant Speelman"
tags:
  - Rails
---

## ActiveSupport Method Of The Week : [group_by](http://as.rubyonrails.org/classes/Enumerable.html#M000498)

Collect an enumerable into sets, grouped by the result of a block. Useful, for example, for grouping records by date.
Example:

    latest_transcripts.group_by(&:day).each do |day, transcripts|
        p "#{day} -> #{transcripts.map(&:class).join(', ')}"
      end
    "2006-03-01 -> Transcript"
    "2006-02-28 -> Transcript"
    "2006-02-27 -> Transcript, Transcript"
    "2006-02-26 -> Transcript, Transcript"
    "2006-02-25 -> Transcript"
    "2006-02-24 -> Transcript, Transcript"
    "2006-02-23 -> Transcript"

#Soundcloud

A good writeup from Soundcloud about how they grew their stack to cope with demand as and when they needed to.  Rather than going for a super scalable solution from the outset, they iterated on their app to add scalability as they went.  I think it's a nice continuation of the Songkick article from last week about not over testing in your automated build.  It's all about pragmatism.

[http://backstage.soundcloud.com/2012/08/evolution-of-soundclouds-architecture/](http://backstage.soundcloud.com/2012/08/evolution-of-soundclouds-architecture/)

#Caltrava is a new open source JavaScript-based

Caltrava is a new open source JavaScript-based framework for developing cross-platform mobile applications. It's been built by a couple of Thoughtworkers. I think it looks rather promising...[have a look and decide for yourself:](http://overwatering.org/blog/2012/10/announcing-calatrava/)

#Follow snoopdogg on Instagram

[why you should follow snoopdogg on Instagram](http://instagram.com/p/QZdeooS82k/)

#Wait, DevTools could do THAT?

[tips and tricks for performance minded...](http://www.igvita.com/slides/2012/devtools-tips-and-tricks/#1)

#Fontier extension for Chrome (Robert Pataki)

Everything is about the responsive web these days. When testing em and percentage based responsive websites I found it quite annoying that changing the default font size in Chrome is an annoyingly click-and-scroll-heavy task.
I created Fontier that I used myself for a couple of weeks now, but I couldn't put it on the Google Web Store, as it used the experimental API. Google did a sneaky Chrome update the other day, and bless them - they moved the fontSettings from the experimental package to the core package!

[Check out my first Chrome extension on the Chrome Web Store, and give a good test to those responsive grids :)](https://chrome.google.com/webstore/detail/fontier/dkbamaalakfhckcidgiigdinhcncaeae)



