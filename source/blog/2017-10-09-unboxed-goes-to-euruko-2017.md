---
date: '2017-10-09 13:30 +0100'
published: true
title: 'Euruko 2017'
tags:
  - Culture
  - Innovation
authors:
  - 'Elena Tanasoiu'
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/099987acb4b5f5d1aa42aaa107e0d982.JPG
---

![Euruko 2017 - Budapest at first glance](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/6c182f7d2c02152b8d97fb01c0d63e62.JPG)

Our lovely band of Unboxed developers descended upon Budapest for [Euruko 2017](https://www.euruko2017.org/), which took place between the 29th and 30th of September. We enjoyed having the opportunity to explore a lovely city full of culture, great food and beautiful sights at every turn.  

The conference was organized as a single track, two day conference with talks about subjects like: building a search engine, using a DSL for network simulation, building faster APIs with GraphQL, and ways to help junior developers become more confident. You can read a selection of the talks we enjoyed below.  

But before you do that here's a picture of some us enjoying the lovely Budapest sun. Mmmm, lemonade.

![Euruko 2017 - Mmmmm, lemonade](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/17a56164f0807a79ddc8c3218e22ad67.JPG)


# Euruko impressions - [Charlie E](/people#charlie-egan)

### Predicting Performance Changes of Distributed Applications - [Wojtek Rząsa](https://euruko2017.org/speakers/#wojtek)

[Talk slides available here](https://speakerdeck.com/wrzasa/predicting-performance-changes-of-distributed-applications)

I thought this talk was brilliant. In my final year we had to write a report on the security of some public system; I chose Heroku and learnt just how much of a black box it was. In this talk, Wojtek used an example of a real-life question one might have about the Heroku platform and described it using his network simulation DSL. With that he was able to complete experiments to better understand how Heroku works. I really liked this format; first presenting an interesting tool / DSL then showing the results of doing something genuinely useful with it. It's just a shame that the tool isn't yet publicly available.

### Things I Learned the Hard Way Building a Search Engine - [Katarzyna Turbiasz-Bugała](https://euruko2017.org/speakers/#katarzyna)

[Talk slides available here](https://speakerdeck.com/wrzasa/predicting-performance-changes-of-distributed-applications)

I thought this was a really nice intro to information extraction. The talk built up a list of enhancements one could make to an information extraction tool for search. It covered things like ignoring stop words, tf-idf & stemming without being too theoretical. I've always thought that NLP problems are great because it's so simple to understand the problem; the solutions can be very varied and are almost always far from absolute. It was really nice to get a surprise refresher of this at EuRuKo.

# Euruko impressions - [Ben W](/people#ben-wong)

### Rescuing legacy codebases with GraphQL and Rails - [Netto Farah](https://www.euruko2017.org/speakers/#netto)

I was intrigued by the notion of faster APIs using graphQL described in this talk. Because graphQL lets you request and entire data structure in one go, the API can optimise the query - as opposed to a REST API, where separate requests for different resource types makes this impossible.

### The overnight failure - [Sebastian Sogamoso](https://www.euruko2017.org/speakers/#sebastian)

[Talk slides available here](https://speakerdeck.com/sebasoga/the-overnight-failure-2)

This was a lovely experience report about a runaway failure of a billing process. A particularly enlightening tidbit was about the extra/non-technical fixes that happen as a result of the failure - they had to write cheques for their customers because cheques are faster than bank reversals.

### Lightning talk: tty - [Piotr Murach](https://github.com/piotrmurach/tty)

Because progress bars on terminal commands are _mandatory_ .

![Excitement building prior to the first talk of the conference](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/5354aea8e0e807b03796c7102298237e.JPG)

# Euruko impressions - [Neil vB](/people#neil-van-beinum)

### Case Study: The Real Black Friday aka How To Scale an Unscalable Service - [Judit Ördög-Andrási](https://euruko2017.org/speakers/#judit)

This talk was about a marketing email service which sends billions of emails per month. One of its apps, an campaign analysis tool, failed on the busiest shopping day of the year in the US: Black Friday. The number of users doubled since the same day a year prior, and this, along the UI and backend request jobs overloading single processes, resulted in a failure to respond to requests and an unresponsive UI for customers.

One of the aspects of this talk I enjoyed was how it used a story-telling approach to describe how they tackled the problem along three "timelines" of increasing length (taking inspiration from the structure of the recent 'Dunkirk' film):

1. A hot fix to get the app responding to requests by increasing the timeout and including a uniqueness constraint on requests that were being rapidly retried from a client app.
2. Infrastructure changes to scale up the service, including writing a configuration management script.
3. Longer-term code changes including adding background jobs to perform the backend work asynchronously and deploying this change for a subset of users (known as a "dark launch") so that they could monitor and compare the changes while only testing on a smaller set of users.

# Euruko impressions - [Elena T](/people#elena-tanasoiu)

### How to Make It As A Junior Dev and Stay Sane - [Katelyn Hertel](https://euruko2017.org/speakers/#katelyn)

One of my favorite moments in the whole conference was when Katelyn Hertel started talking to us about power poses. The entire talk was great in terms of recovering from burnout, learning to say no, setting aside time in your day to have no meetings scheduled (which will keep you sane). All great advice not only for juniors, but for everyone working in this industry. But if there's one thing I'll remember it will be the moment Katelyn's voice became more confident when she started demonstrating what power poses she does to increase her confidence. It was great to see such a well put together presentation about life as a junior and her strong gif game definitely played a role in that. 

# Euruko impressions - [Chris H](/people#chris-holmes)

This year was my first Euruko and I really enjoyed it, there was a good variety of talks in a beautiful city with lots of Rubyists, what's not to like? The 
first day highlights for me were Matz talking us through progress toward the Ruby 3x3 (making Ruby 3 three times faster than Ruby 2) and how progress 
with just in time compilation (MJIT), amongst other things means they are hopeful of achieving this. I also liked one of the lightning talks that introduced
[reality](https://github.com/molybdenum-99/reality), a wikipedia wrapper written in Ruby.

### How to Make It As A Junior Dev and Stay Sane - [Katelyn Hertel](https://euruko2017.org/speakers/#katelyn)

My favourite moment came on the second day when Katelyn gave a talk about how to make it as a junior dev and stay sane, she talked from the perspective of a junior but also had some tips for those who may be mentoring or
have juniors on their team. This was Katelyn's first talk and as she was talking about power poses and how they can give you confidence, she demonstrated on stage
and her voice became noticeable more confident, it was awesome!

![Euruko 2017 - "Goodbye hug"](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/40d11413346959f50db1c2db6102def7.jpg-large)
Source: [Amr Abdelwahab(عمرو)](https://twitter.com/amrAbdelwahab)

All in all, we feel Budapest was a great choice for Euruko and we enjoyed hearing and learning about some interesting new ideas from the Ruby community and beyond. We're looking forward to taking part next year as well, this time in Vienna!

