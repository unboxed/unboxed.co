---
date: "2012-09-28 11:47:00 UTC"
published: true
title: "RSpec Sitemap matchers for your SEO goodness"
authors:
  - "Attila Gyorffy"
tags:
  - Rails
---

Not that long ago we [released our new website at Unboxed](http://www.unboxedconsulting.com). We took the time to carefully think about how our new site was going to be structured, how our URIs were going to look. We introduced new pages and deprecated or merged others.

Needless to say that we also had to rework our URL structure, our unique URIs, etc. In order not to lose our previous SEO scores and to make sure Google will pick the new URIs up as quickly as possible, we made use of the [Sitemap protocol](http://www.sitemaps.org/protocol.html).

A sitemap is essentially nothing more than an XML file in your domain's root that helps informing search engines about the available pages on your site for crawling. This data is then processed by search giants like [Google](http://google.com), [Yahoo!](http://search.yahoo.com/) or even Microsoft's [Bing](http://www.bing.com/).

Let me pull in the description from the official sitemap domain:

"In its simplest form, a Sitemap is an XML file that lists URLs for a site along with additional metadata about each URL (when it was last updated, how often it usually changes, and how important it is, relative to other URLs in the site) so that search engines can more intelligently crawl the site".

We took a TDD approach to drive out our method to generate our sitemap dynamically. Our sitemap incorporates our main pages, such as the homepage, case studies and many more. Go on, have a look at [it](http://www.unboxedconsulting.com/sitemap.xml) yourself.

Now, in order to not need to fiddle around much with Nokogiri  when testing our sitemap's XML data, I felt the need of a simpler way to write my tests in RSpec.

The end result is a new gem that can help you write meaningful and more semantic code when you are testing your sitemaps:

[http://rubygems.org/gems/rspec-sitemap-matchers](http://rubygems.org/gems/rspec-sitemap-matchers)

```
it { should include_url('http://www.example.com').priority(0.5) }
```

The project is not fully feature complete but is already usable and it is under development. Please see the documentation on the project's [github page](https://github.com/unboxed/rspec-sitemap-matchers), fork, write tests and contribute with code.
