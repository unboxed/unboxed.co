---
date: '2016-09-22 10:46 +0100'
published: true
title: >-
  Andrew White’s Technical Breakfast Club: Scaling up Rails in a national
  referendum
author: Andrew White
tags:
  - Rails
main_image: >-
  http://i1291.photobucket.com/albums/b548/grammccram/6c099d53-a307-45f0-ba03-7c8b8dd9f6bf_zpsoyjrhpgo.png
---
<i>This was the next installment of Andrew White’s Technical Breakfast Club – the breakfast club for Rails developers and architects, hosted by Rails Core Team Member and our CTO, [Andrew White](https://unboxed.co/people#andrew-white).</i><br/>

![Andrew White's Technical Breakfast Club 1](http://i1291.photobucket.com/albums/b548/grammccram/IMG_5405_zpsmatdnvv9.jpg)

<i>The topic of this installment was ‘Scaling up Rails in a national referendum’ – the story of how over four million UK citizens took to the Parliament Petitions website, following the EU referendum result, to sign the ‘EU Referendum Rules triggering a 2nd EU referendum’ petition.</i><br/>

![Andrew White's Technical Breakfast Club 2](http://i1291.photobucket.com/albums/b548/grammccram/16bb3aca-7745-4ab6-9857-5cd4625e49cd_zps0f5dviap.jpg)
<br/>

# The background to the Petitions website and its design
[Petitions](https://petition.parliament.uk/) is an online government platform, enabling members of the public to create or sign petitions that ask for a change to the law or to government policy. Built as an open source Rails application, the platform is used to open up new dialogue between public and Parliament. Individual petitions that receive 10,000 signatures get a response from the government, and 100,000+ signatures are considered for debate in Parliament.<br/>

<b>Version 1</b><br/>
The first Petitions site was launched in November 2006, during Tony Blair’s time as Prime Minister. This system was developed by [MySociety](https://www.mysociety.org/2010/12/15/local-e-petitions-see-if-mysociety-is-providing-your-local-system/).<br/>

<b>Version 2</b><br/>
We began working with GDS on the second version of the Petitions site, launched as e-Petitions by the coalition government in July 2011. This system experienced heightened popularity during the 2011 London Riots and was immediately required to scale for the surge of signatures during the [‘Convicted London rioters should loose (sic) all benefits’]( [https://petition.parliament.uk/archived/petitions/7337) petition, which received 258,276 signatures.<br/>

<b>Version 3 (current version)</b><br/>
The [current version of Petitions was launched in July 2015](https://unboxed.co/project-stories/petitions/), in partnership with GDS, as a platform to open new dialogue between the public and Parliament. Developing on the existing codebase allowed our team to get moving from day one, with only a limited amount of time due to the government being closed for the 2015 election.<br/>

For this version of the platform, the team focused on:<br/>

- A complete service redesign 
- Taking a mobile-first response to design
- Using and applying the four years’ of GDS experience (at the time) in terms of research and toolkits

The new specification for this Rails app was mapped out using the traffic and signature processing peaks of the previous version of the system, and addressed the number of emails that signees needed to click through to when signing a signature to create an easier user flow.<br/>

As one of the first GDS services to be hosted on AWS, the system was built using Amazon CloudFormation - technology that allows a large JSON file to be uploaded to specify the infrastructure. Uploading this file builds a series of servers to allow us to reproduce environments.<br/>

Other technology used includes:<br/>

- CodeDeploy for added deployment code, where we upload to S3 then an agent runs off each of the instances that copies out the code
- RDS for database
- Autoscaling for scaling instances

Petitions is a highly-transactional platform, with content changing on a very regular basis. When a user signs a petition, application servers and background workers are used to send a confirmation email to a signee to validate their signature.<br/>

Both CloudFormation and Elastic Compute Cloud (EC2) are used to automatically deploy and scale any incidences when responding to user demand. Backing these is a PostgreSQL RDS (Relational Database Service) database which acts as our primary data store. One other component in our stack is ElastiCache, a key-value store configured with the Memcached engine, which acts as a store for generated fragments of HTML that we use to speed up page build times.<br/>

![Andrew White's Technical Breakfast Club 5](http://i1291.photobucket.com/albums/b548/grammccram/a70ac87f-5594-4914-9fac-c95b09c7face_zpsbpxy9yt2.jpg)
<br/>

# Lessons learnt from previous popular petitions
We have encountered, and surpassed, a number of milestones over the last 13 months. Lessons we have learnt through these experiences, since launching, include:<br/>


<b>1. Jeremy Hunt (120,680 signatures)</b><br/>
During the ‘Jeremy Hunt to resume meaningful contract negotiations with the BMA’ petition, the system was processing 21,000 signatures per hour, surpassing the peak of 12,000 per hour from the previous version of the site. Some invalid signature counts were highlighted, resulting in making the change of locking the signature row before applying.</br>

<b>2. Jamie Oliver’s Sugar Rush (155,516 signatures)</b><br/>
Launched by Jamie Oliver, the ‘Introduce a tax on sugary drinks in the UK to improve our children's health’ petition received national coverage when the URL to the petition was included at the very end of his television programme. Google Analytics then showed the number of concurrent users jumping from 9,000 to 21,000 in the space of seconds. We don’t use custom AMIs due to the reaction time (one-to-two minutes), but learned that spare capacity is required at all times for instances such as this.</br>

<b>3. Donald Trump (586,933 signatures)</b><br/>
The ‘Block Donald J Trump from UK entry’ petition in December 2015 showed a large amount of locks when trying to update the signature count on the petition. This was because we ran a lot of the code for validating a signature inside a database lock. We realised we could move part of it, the signature count update, outside the lock without risking counting double clicks.</br>

<b>4. Meningitis B vaccine (823,346 signatures)</b><br/>
The ‘Give the Meningitis B vaccine to ALL children, not just newborn babies’ petition hit a new peak for the system, at the time, receiving 54,000 signatures per hour. We scaled the number of app servers, as expected this pushes more load onto the database but not enough for us to be worried (yet). We needed to achieve and maintain a balance in the application to ensure there were no bottlenecks.</br>

![Andrew White's Technical Breakfast Club 6](http://i1291.photobucket.com/albums/b548/grammccram/IMG_5406_zpswmxkza62.jpg)
<br/>

# Scaling your app when it receives unexpected demand: The EU referendum petition

<b>Friday 24th June</b><br/>
The morning of the 24th June 2016. Following the EU referendum result, I caught the 07:42am train from Coventry to London and checked the Petition site, as one of the first things I do in the morning. I noticed the ‘EU Referendum Rules triggering a 2nd EU Referendum’ petition, which had already received over 20,000 signatures (previously having only around 20 signatures before 06:00am that morning). Checking the number of concurrent users showed 41,893 actively on the site. Just then came the news of David Cameron’s resignation as Prime Minister. I knew, there and then, that we were in for a busy day.</br/>

We began to see some issues with locking on the row for the petition. There is one column which caches the signature count, and with 40,000 people all trying to write in that one column at the same time, traditional scaling techniques weren’t proving effective. Site models were used to disable the site for 10 seconds around every 30 minutes, allowing locks on the database to drop.</br/>

Contention on that row was coming from people validating signatures so we made a decision to back up the queue by reducing the number of workers sending out validation emails to one worker, buying some time. We then worked on reducing the contention on the database, without being able to make any major infrastructure changes. We already had memcached in our infrastructure as part of elasticache, so we wrote the signature count to there, and ran a periodic background job to write it back to the database.</br/>

Having reduced the locks on the petition table we noticed we were now getting locks on the country petition journals where we keep counts of all the signatures for a petition broken down by country. As most of the signatures were from the UK we were seeing locks on those rows. As a stopgap we decided to stop recording this count and our locks went away almost instantly. However, the system produces a JSON API showing the data for each petition and we had people watching this JSON data to see what was going on with this high profile petition. Some of these people noticed that the signature count for the petition didn’t match up with the signature counts by country any more so we had to update the journals manually every so often while we came up with a better solution.</br/>

By the end of the day, the system had crashed through the 14,000,000 pageview barrier:</br/>

![Andrew White's Technical Breakfast Club 7](http://i1291.photobucket.com/albums/b548/grammccram/Screen%20Shot%202016-08-31%20at%2017.05.01_zpswcnb6yfe.png)

The traffic peaks in the analytics show the highest page views of previous popular petitions since the relaunch of the platform, with this petition vastly surpassing these.<br/>

<b>Saturday 25th June</b><br/>
By Saturday morning, we had scaled the database to double in size and had one million jobs in the background job queue. Churning through these jobs, we were able to get the embargoed emails out by the morning. Running at 45,000 RPM over 62,000 concurrent users, the system was processing over 2,000 signatures per minute:<br/>

<blockquote class="twitter-tweet tw-align-center"><p lang="en" dir="ltr">The Rails app behind <a href="https://t.co/bVfm2AEzkh">https://t.co/bVfm2AEzkh</a> is now running at 45k rpm and 62k concurrent users - over 2k sigs per minute. 😨</p>&mdash; Andrew White (@pixeltrix) <a href="https://twitter.com/pixeltrix/status/746638607897759744">June 25, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Quite soon, we realised were going to need a bigger database. We scaled up to the biggest database that Amazon has available, 40 vCPUs with 160 GB of RAM, to accommodate for the 85,000 concurrent users on the site. Oh, the magic of AWS.<br/>

When scaling up to the 12th application server for the evening, we hit a problem - it wouldn’t scale we’d hit the limits for how many EC2 instances we could run. After a quick email to our AWS account manager we got the increase in the instance limits we needed to ensure we were then able to scale up. The application was then running at:<br/>

- 100,000 RPM
- 100,000+ concurrent users
- 141,000 signatures per hour

<br/>
<b>Sunday 26th June</b><br/>
Reports of fraudulent signatures arrived in the media by day three. [Oskar](https://twitter.com/oskarpearson), [Murray](https://unboxed.co/people#andrew-white) and myself investigated and removed any fraudulent signatures from the system that had previously been processed and ensured these were constantly monitored going forward. Helen Jones MP, Chair of the Petitions Committee, released a statement from the House of Commons to address this issue:<br/>

![Andrew White's Technical Breakfast Club 8](http://i1291.photobucket.com/albums/b548/grammccram/petition%20statement_zpsi9qpmcxo.jpg)

By Wednesday 29th June, the petition had crossed the 4 million-signature threshold, but had begun to slow down.<br/>

![Andrew White's Technical Breakfast Club 9](http://i1291.photobucket.com/albums/b548/grammccram/IMG_5420_zpsf0maqabm.jpg)

<br/>
# Aftermath
The petition is currently sitting at 4,146,963 signatures (as of 14th September), with a closure date of 25 November 2016.<br/>

The following week, we embraced our Agile culture and held a retrospective to reflect on the week following the EU referendum result. We also shared what each of us had learned through this experience:<br/>

- Our app is very quiet in terms of notification, which was a huge benefit - over time, we have tried to eliminate the number of notifications to reduce the “noise” and prevent drowning in alerts
- Configuration makes everything as uniform as possible
- Have all your servers working the same
- Get the biggest database you can afford
- RDS is pretty amazing - if you set your RDS instance in multi-AZ mode, you have essentially another instance running in a different zone so when you scale this, it scales the backup instance, falls over to the backup instance, then resizes the main instance, and falls back to your backup instance
- In terms of performance, application monitoring is essential as you need to know where your hotspots are
- You can’t just scale up if you’re not constantly improving and looking at your application on an ongoing basis - there are no magic bullets

<blockquote class="twitter-tweet tw-align-center"><p lang="en" dir="ltr">In order to scale successfully, you need to be constantly improving your app. <a href="https://twitter.com/hashtag/AWTBC?src=hash">#AWTBC</a> <a href="https://t.co/cmGLCtJy00">pic.twitter.com/cmGLCtJy00</a></p>&mdash; unboxed (@Ubxd) <a href="https://twitter.com/Ubxd/status/770910803042177024">August 31, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<br/>
We are now focussing on improving our approach to handling fraud on the system, including:<br/>

Moving the task of removing invalid signatures from a developer task to an admin task
Relying less on blacklists and switching to whitelists to apply rate limiting to unknown domains and IP addresses.<br/>

After we moved some functions and modules to memcached and stopping updating other counts, we realised these weren’t sustainable approaches are they relied on human intervention and extra infrastructure. We used these hotfixes to buy us some time to come up with more sustainable solutions where we moved more of the contentious database writing into background jobs where we could control the exact number of simultaneous writes to the database.<br/>

From scaling up to accommodate a 403%+ increase in signatures (823,346 to 4,146,963 - the increase from the previous highest petition), Petitions is now in an effective place in terms of scaling. Although we wouldn’t expect to see another petition quite like this again, one of the greatest responsibilities of being part of the Petitions team is how to deal with the unexpected element of surprise. Should we see another national movement like this take place again, we are in a good position to handle it.<br/>

<iframe src="//www.slideshare.net/slideshow/embed_code/key/3KIGbLyzMZz182" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/UBXD/andrew-whites-technical-breakfast-club" title="Andrew White&#x27;s Technical Breakfast Club" target="_blank">Andrew White&#x27;s Technical Breakfast Club</a> </strong> from <strong><a href="//www.slideshare.net/UBXD" target="_blank">Unboxed </a></strong> </div>



