---
weekly_roundup: true
date: "2013-03-22 14:56:00 UTC"
published: true
title: "[Insert your own punny title for the Developer newsletter here]"
authors:
  - "Richard Archer"
tags:
  - Rails
---

[Snappy introduction and witty segue]

Here are this week's links - enjoy the weekend!

Event Aggregator And/Or/vs Mediator: A Tale of Two Patterns - Jörg D
==

[http://lostechies.com/derickbailey/2013/03/18/event-aggregator-andorvs-mediator-a-tale-of-two-patterns/](http://lostechies.com/derickbailey/2013/03/18/event-aggregator-andorvs-mediator-a-tale-of-two-patterns/)

Clearly written article on explaining the difference between the Event Aggregator and the Mediator patterns.

You are watching your DNS logs, right? - Tom TT
==

[http://blog.safeinstance.com/2013/03/18/dns/](http://blog.safeinstance.com/2013/03/18/dns/)

How Facebook discovered a compromise in their network by looking at DNS logs and how you can do the same.

Here are some IRB customisations - Pawel J
==

[http://rakeroutes.com/blog/customize-your-irb/](http://rakeroutes.com/blog/customize-your-irb/)

Imagine, if you will, an article with the title - "Customize your IRB". This link fulfills all you could possibly imagine about such a dream.

Testing your database backups: the test environment database refresh pattern - Murray S
==

[http://www.songkick.com/devblog/2013/03/20/testing-your-database-backups-the-test-environment-database-refresh-pattern/](http://www.songkick.com/devblog/2013/03/20/testing-your-database-backups-the-test-environment-database-refresh-pattern/)

A good article from one of the songkick devops about how to do db backups properly.  Crucially it's not enough to backup the data, you need to test that you can restore it.  He also covers the kinds of data sanitization they do on these backups so that their test servers have real data, but not real account details.  I'd have liked a bit more detail on how they do that bit as it's something I've done a few times, but never been happy with the solution.  I've used raw SQL, bash scripts, and even looked at some higher-level tooling like [https://github.com/sunitparekh/data-anonymization](https://github.com/sunitparekh/data-anonymization), but nothing I've done has sat that comfortably with me yet.

Barcelona Music Hack Day - Andrew M
==

[http://bcn.musichackday.org/2013/index.php?page=Main+page](http://bcn.musichackday.org/2013/index.php?page=Main+page)

Barcelona is holding its 4th Music Hack Day on the 13th and 14th of June. Some of the developers here went last year. They are making a special call to this year for people interested in neuroscience and music and are looking into APIs for interacting with music using the brain.

Awesome!

When Enterprise software goes too far. - Matt P
==

[https://github.com/Mikkeren/FizzBuzzEnterpriseEdition/](https://github.com/Mikkeren/FizzBuzzEnterpriseEdition/)

FizzBuzz is often used to filter out programmer novices.  But at the other end of the scale of programming complexity, there's this github project which takes Enterprise methodologies to an extreme.

Collection of cheatsheets / mini references - Matt P
==

[http://www.overapi.com/](http://www.overapi.com/)

As developers working on multiple projects (as opposed to environments where one product is developed continuously) we get exposed to lots of different technologies and software products.  Here's a useful page which has reference guides for lots of tools that we use, for use as a reminder of those which we've forgotten due to not having used in a while.

Action Cost - Matt P
==

[https://github.com/plerohellec/action_cost](https://github.com/plerohellec/action_cost)

Quoting directly from the README file, "ActionCost is a Rails 3 engine implemented as a gem. It hooks into ActiveRecord (and RecordCache if used) and counts the number of SQL queries per controller action and per table."

Making Front-end development a team sport - Rich A
==

[http://cognition.happycog.com/article/making-front-end-development-a-team-sport](http://cognition.happycog.com/article/making-front-end-development-a-team-sport)

Great overview from HappyCog's Jenn Lukas about the various approaches we can all take to make front-end development as easy-to-collaborate-upon-able as possible.


MailChimp UX Newsletter - Rich A
==

[http://us5.campaign-archive1.com/?u=7e093c5cf4&id=24a1198f78](http://us5.campaign-archive1.com/?u=7e093c5cf4&id=24a1198f78)

MailChimp are incredibly transparent about their UX processes - to the point that they've now started a UX-themed newsletter for your weekly edification.

Flash vs. HTML - Rob P
==

[http://flashvhtml.com](http://flashvhtml.com)

We've read and seen a lot of sites, articles and debates about the end of Flash and the uprising of HTML5. The guys at Waste know both platforms pretty well and after creating Waste Invaders for iOS using Adobe AIR (stage3D) they managed to make the same game using HTML5 technologies. Now they rolled out a sweet WebGL microsite to share their thoughts about the two platforms and their findings.

"Fun" Stuff : Chrome Maze - Rich A
==

[http://chrome.com/maze](http://chrome.com/maze)

Hey there, folks over 27 years of age - remember Marble Madness? Recreate all the fun of shouting "**NO! THAT WAY! THAT WA**oooh damn" but with your mobile Chrome browser magically co-operating with your desktop equivalent. The Future is here, folks, and it's really difficult to control.

