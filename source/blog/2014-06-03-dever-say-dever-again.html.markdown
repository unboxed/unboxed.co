---
weekly_roundup: true
date: "2014-06-03 10:22:00 UTC"
published: true
title: "Dever say Dever again"
authors:
  - "Murray Steele"
tags:
  - Rails
  - Agile
---

Welcome!  Welcome to our rebooted Dev Newsletter.

### On Developer Empathy - [Murray](/people#murray-steele)

[http://techbelly.ghost.io/empathy/](http://techbelly.ghost.io/empathy/)

I always enjoy chatting to [Ben Griffiths](https://twitter.com/beng) about technology and development practices.  He has a warm and human take on things that is often lacking in other discussions online, so it's great to see him start blogging again.  [His article on the empathy required to be a developer](http://techbelly.ghost.io/empathy/) is a topic I've thought about a lot, particularly in the context the tools we use.

One tool I use a lot is ``git blame``.  I use it [when trying to work out why a line of code](http://mislav.uniqpath.com/2014/02/hidden-documentation/) is the way it is, but I really wish it wasn't called blame; blame implies that we want to find [whose fault it is](https://twitter.com/search?q=git%20blame%20punch), but as Ben says in his article maybe you just don't understand yet the reason's why the previous developer made those choices.  We should embrace [collective code ownership](http://www.extremeprogramming.org/rules/collective.html) and not look to blame someone, but [look for understanding](https://twitter.com/srbaker/status/445227065630277632).

### Connecting: Makers - Francesca

[http://connectingthefilm.com/](http://connectingthefilm.com/)

[Microsoft Design](http://www.microsoft.com/design/) and [Bassett & Partners](http://www.bassett.tv/about/) have just released a lovely series of short films about connectivity, design and making things. I was particularly moved by the story of MakerBot who are 3D printing affordable mechanical prosthetic hands for children born with Amniotic Band Syndrome. The film, called [Connecting: Makers](https://vimeo.com/96699192), made me wanna make!

### Preserving git history during a separation refactoring - [Murray](/people#murray-steele)

[https://gdstechnology.blog.gov.uk/2014/06/04/using-git-to-refactor-vcloud-tools-into-separate-gems/](https://gdstechnology.blog.gov.uk/2014/06/04/using-git-to-refactor-vcloud-tools-into-separate-gems/)

Most of us only use git for the basics: ``add``, ``checkout``, ``commit``, ``pull``, ``merge``, and maybe the odd ``rebase`` if we're feeling fancy.  However, git provides a plethora of sub-commands for us to play with if only we knew they existed and how to use them.  Thanks to [Anna Shipman](http://www.annashipman.co.uk/), writing on the [GDS technology blog](https://gdstechnology.blog.gov.uk/), we can add ``git filter-branch`` to our list.

Not only is this blog post an excellent review of how and why you might use ``git filter-branch`` (and a few other sub-commands), it's also a really thoughtful piece of writing about software maintenance.  As we read above, the git history is helpful when working out why a piece of code is the way it is, so it's useful to know how to preserve that history even while breaking a single repository down into multiple parts.  If I ever want to use any of the sub-gems that now make up [vcloud-tools](https://github.com/alphagov/vcloud-tools) I'll be very glad Anna went to the extra effort to make sure that the history doesn't stop abruptly with an *all-the-code-imported-from-the-old-project* commit.

### Serve compressed content via Rack::Deflater - Pedro

[http://robots.thoughtbot.com/content-compression-with-rack-deflater](http://robots.thoughtbot.com/content-compression-with-rack-deflater)

This is a little old, but I’ve it found recently. While not gainful for every app, the gains are interesting enough, specially on free Heroku instances.

###  Using Puma as server - Pedro

[https://github.com/jrochkind/fake\_work\_app](https://github.com/jrochkind/fake_work_app)

I’ve been playing around with [Puma](http://puma.io/) and [Rubinius](http://rubini.us/) today and discovered this one. As far as Puma goes, it seems that people are slightly put off by having to shift from MRI to reap the benefits of multithreading. This example app/comparison article of several configuration options deploying an app served by Puma to Heroku with MRI seems to indicate that it is a pretty viable alternative to [Unicorn](http://unicorn.bogomips.org/). Thoughts anyone?

### Some Rails 4/Postgres goodness around storing ranges - Pedro

[http://www.simontaranto.com/2013/12/31/using-postgresql-s-tsrange-range-type-with-rails.html](http://www.simontaranto.com/2013/12/31/using-postgresql-s-tsrange-range-type-with-rails.html)

My current playground app involves creating trips with start/end dates. I’m storing them as a single daterange on a ‘duration’ attribute. It works pretty well and so far it seems pretty convenient. It also won’t allow you to create records with invalid ranges (end date before start date) since PG will throw a data exception :)
