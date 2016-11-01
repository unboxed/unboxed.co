---
date: '2016-10-28 10:39 +0100'
published: true
title: NEXT London 2016 - Google Cloud Platform's User Conference
author: Charlie Egan
coauthors:
  - Paula Stepinska
tags:
  - Culture
  - Innovation
main_image: >-
  http://i1291.photobucket.com/albums/b548/grammccram/Screen%20Shot%202016-10-28%20at%2012.06.26_zpsiskyzric.png
---
Paula and I attended last Friday’s [NEXT London 2016 - Google Cloud Platform's User Conference](https://cloudplatformonline.com/NEXT2016-London.html) - the largest Google developer and IT gathering in the UK, exploring the latest developments in cloud technology.<br/>

![Google Cloud Platform's User Conference](http://i1291.photobucket.com/albums/b548/grammccram/67986f78-d115-40c8-bd50-a48ead03e4e6_zpsxbldytwq.png)

Across the day, we attended a number of sessions from the Plenary and Breakout tracks. Here are our summaries of some these talks... <br/>
<br/>

## GCP Next 2016 conference impressions - [Charlie](https://unboxed.co/people#charlie-egan)

# Painless container management with Google Container Engine & Kubernetes
This was the first talk in the big hall. Craig Box gave a similar overview of
Kubernetes to his presentation at Container Camp last month. Kubernetes is
Google's open source container scheduler based their experience building Borg,
their internal scheduler. The problem of running persistent workloads in
containers is still an area of uncertainty; however, some new features in
Kubernetes 1.4 look to be addressing this. He was also keen to point out the
efforts of the community to improve the Kubernetes development experience
with Minikube as well as the experience on other clouds.<br/>

<br/>
# Storage scenarios and stories: Migrating the world's music to GCS
This talk was about Spotify's story of moving their 5 billion files to GCP. It
wasn't at all technical but did highlight the benefits of Google's storage
offerings. They have what looks like a great tool to import data from other
hosted storage offerings - that apparently only dropped ~100 files out of the 3
petabytes of data. 'Coldline' was also announced at the same price point as AWS
Glacier - only markedly faster.<br/>

![GCP audience](http://imagizer.imageshack.us/a/img922/7448/WzW0xt.jpg)

<br/>
# Rats and soft drinks: stories from the IoT frontline
Speakers from Coca-Cola and Rentokil talked about how they use GCP to ingest a
data from IoT devices. Rentokil were using smart, connected traps to help
food factories to comply with new regulations by responding to incidents quickly.
Coca-Cola were using beacons to track visitors to stores with bluetooth beacons
and using the data to select very small groups for highly targeted advertising.<br/>

<br/>
# Serverless computing with Google Cloud Functions
GCP Developer Advocate Bret McGowen gave a very clear introduction to Google
Cloud Functions. While these look good and easy to use - sadly we can't actually
use them yet while they're in alpha (though we got the chance to sign up...).
Contrary to the talk description, we also missed out on a demonstration of
deploying from GitHub.<br/>

<br/>
# SREs: How Google Does Planet-Scale Engineering for Planet-Scale Infrastructure
This was the winner for me. Philip Beevers, head of site reliability here in
London, gave a really good overview of how Site Reliability Engineering works at
Google - from both a social and technical perspective.<br/>

He talked about how an 'Error Budget' helps balance service level objectives
with feature development. Rather than having greater reliability than your
objective you can instead use this buffer to move faster delivering new
features. Should this lead to poorer downtime then it's a signal to slow down
and spend time working on reliability, performance and process.<br/>

SREs at Google mix with other engineers who have the option to give the role
a trail run. On call shift length is also reduced when a faster response time
was required.<br/>

He also talked about a game they played called "The Will of Misfortune". Played
Individually or collaboratively, the game involves talking through a past failure
scenario and discussing actions they'd take. I thought this sounded like
something we could have a go at sometime as a developer event.<br/>

There were also a good 15 mins of questions that he handled very well. Questions
ranged from on-call compensation (which he passed on) to some hard questions
about recent downtime on GCP products. His answers to these shed more light on
the process and was a great bonus - people were clearly interested, but
skeptical, in the SRE setup.<br/>
<br/>

## GCP Next 2016 conference impressions - [Paula](https://unboxed.co/people#paula-stepinska)

This certainly was a big selling event. But Google managed to spark the interest
in their different Google Cloud products, presenting how to solve real problems
with these products, rather than hosting a series of marketing session to _sell_
these to us. I learned that GCP has a lot to offer, with its fast, quite
affordable and insanely scalable products.<br/>

From the day-long conference, there were two presentations that I really enjoyed
(and came away with the most from):<br/>

<br/>
# Presentation #1: Supercharging Firebase with Google Cloud Platform

When in need of comfortable and easy-to-use "backend-as-a-service", here comes
a Firebase as a production ready, multi-platform (web, iOS, Android), real time
database solution, with an instant connection to various Google's APIs - like
a neural network based Vision API, which is able not only to recognise an image
of the cat, but in many cases it will tell where the picture was taken or who
has produced your cat's food (at least if the bag is in the picture).<br/>

During Sara Robinson’s live coding session, in which she used to build a simple
messaging app, she showcased how Firebase combined with GCP  provides
the possibilities to store images, videos or other large files, and how to use
Firebase Analytics. There is no doubt that these are many examples of
infrastructure advantages that developers now won't have to worry about anymore.<br/>

![Firebase session](http://imageshack.com/a/img921/4791/bGWQv6.jpg)

<br/>
# Presentation #2: Tensorflow and deep learning (without a PhD)

It was promised that no PhD was required, but
[Martin Gorner](https://twitter.com/martin_gorner)'s talk was definitely
addressed to people who have vast knowledge of Machine Learning and terms, such
as [Softmax classifier](https://en.wikipedia.org/wiki/Softmax_function#Neural_networks),
ringing a big bell for them.<br/>

It's no secret that Google has had a major focus on machine learning for a while now.
Within the [Google Brain](https://en.wikipedia.org/wiki/Google_Brain) project,
they have started to explore a deep learning/artificial neural networks trend
in ML and last year they open sourced [Tensorflow](https://www.tensorflow.org/),
a library for numerical computation, which uses data flow graphs. This has been
used for Google Photos and voice recognition, among the others technologies.
During the presentation, Martin was using the MNIST database of handwritten
digits (commonly used for training and testing in ML) to show how TensorFlow
works and what can be achieved with it (training a model to predict the digits
by looking at images). With a whole new product family, Cloud Machine Learning
strives to take a machine learning mainstream, and with Vision, Speech or
Natural Language APIs, we're much closer to developing applications that can
“understand” the world around them.

![Martin Gorner and TensorFlow in action](http://imageshack.com/a/img923/8261/3ZiPHl.jpg)
