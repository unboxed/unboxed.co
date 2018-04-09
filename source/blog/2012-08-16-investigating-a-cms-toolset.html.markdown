---
date: "2012-08-16 15:39:00 UTC"
published: true
title: "Investigating a CMS Toolset"
authors:
  - "Christopher Patuzzo"
tags:
  - Rails
---

Here at Unboxed, we're constantly building content management systems. As the web becomes more dynamic and user-driven, it's important to provide the necessary tools for clients to control content on their sites.

One of our ambitions is to use the latest and greatest technologies, whilst ensuring our customers' sites are of a high quality and well-supported. To meet this demand, Chris Carter and myself have spent the last week exploring CMS-oriented technologies to help streamline this process.

# [ActiveAdmin](http://activeadmin.info/)

We began by looking at ActiveAdmin. To evaluate its usefulness, we attempted to 'plug it in' to an existing internal project.

ActiveAdmin is a Rails plugin that does a lot of the heavy lifting for you regarding administering your models. After a straightforward install, you can visit /admin and manipulate your models through a comprehensive feature set.

## Things we liked

* Looks great - intuitive controls, great UX
* Sortable columns by default
* Searching/filtering of data that automatically detects the appropriate controls to use

## Things we didn't like

* Customisation - ActiveAdmin *is* customisable, but it requires knowledge of their approaches in doing so
* Documentation - we felt it was lacking, making it difficult to develop with

## Summary

In general, it was easy to set up and seemed like a great out-of-the-box solution. However, we found its limitation in customisation to be too restrictive for our needs. If a 'developer' or technical individual is looking for a direct view onto the database, it would be a useful tool to achieve that. Our criteria differ in that our CMS is to be client facing and therefore requires a more abstract layer for content control.

# [Mercury](http://jejacks0n.github.com/mercury/)

Our search for CMS tools led us to look into WYSIWYG editors, as they bridge the gap between low-level database content manipulation and higher-level controls. We stumbled upon Mercury during this search and were pleasantly surprised.

Mercury is a tool for modifying content *in-place* on a website. To edit /my_page, you simply visit /editor/my_page. It allows you to edit any elements marked with HTML5's 'contentEditable' feature.

## Things we liked

* Excellent UI - in comparison to similar products (CK Editor), this looks and feels a lot better
* No assumptions about back-end - modifications are sent to a controller in JSON format, leaving the next steps up to you

## Things we didn't like

* Limited control over page structure - as far as we can tell, you can't swap two columns around, for example
* Compatibility - it doesn't work with non-HTML5 compliant browsers (IE)

## Summary

We think Mercury would fit into our toolset quite well for sites that don't require layout changes. We're advocates of new technology and HTML5 and it seems to fit that bill well. Most clients we work with are using newer browsers, so the compatibility issue shouldn't be too much of a problem.

# [Chosen](http://harvesthq.github.com/chosen/)

We've been using Chosen on projects for a while now, so we thought we'd be critical of it.

Chosen is a replacement for HTML's standard select boxes. Rather than having a large list of choices, you can start typing specific names instead.

## Things we liked

* Straightforward to set up, many gems and plugins that make this even easier
* Has support for filtering on the backend - this means that you don't have to load 10,000 options into a select on page load

## Things we didn't like

* Default themes - quite limited, it would have been nice to see a few more out of the box

## Summary

We're big fans of Chosen and it will definitely be making it into our toolset. It's a shame that the default themes are a little restrictive, but with some work, we're confident we could style them to suit our clients' needs.

# [CanCan](https://github.com/ryanb/cancan/)

Next on the list was CanCan, another gem we've used before.

CanCan is a permission system for Rails built by [Ryan Bates](https://twitter.com/rbates), the producer of [RailsCasts](http://railscasts.com/about). It allows you to assign 'Abilities' to users, granting access to different actions in your controllers and display the associated links in your views.

## Things we liked

* Permission logic extraction - it's (mostly) managed in one place as opposed to being scattered around your application
* DSL - The domain-specific language it uses feels intuitive and readable
* Ryan Bates

## Things we didn't like

* Very little

## Summary

We can't think of a reason why we wouldn't want to use CanCan in our CMS. It's easy to set up and most projects will need some concept of a permission system.

# [Twitter Bootstrap](http://twitter.github.com/bootstrap/)

Finally, we thought we'd explore Twitter Bootstrap a little.

Twitter Bootstrap has becomes very popular recently. It provides a default set of styles, helping you 'bootstrap' your application into life - making it presentable without a huge amount of effort.

## Things we liked

* Very easy to set up - there are Rails generators available to make this super easy
* Compatibility - support for less, sass and plain old css
* Grid layout - this helps to keep things simple and makes responsive design much easier

## Things we didn't like

* Customisation - having used this on an internal project, we found it restricting when bespoke styles were required

## Summary

On the surface, we were fans of bootstrap. It's easy to set up and is great for build sites without prior front-end experience. We soon went off it when we tried to customise extensively and hence we won't be including it in our toolset.

# Next Steps

So what next? We had a few options available to us.

* **Build an app -** something that new projects could be forked from with our recommendations set up and configured
* **Build a gem -** that runs a script that 'bootstraps' a project with our recommendations
* **Provide guidelines -** simply provide some documentation that could be adhered to on new project creation

We began by creating a new Rails app and installed/configured our preferred set of tools for it. This meant we had to make assumptions about how these tools were going to be used, such as the names of models in the database. This was far from ideal as clients use very different terminology when referring to the same sets of ideas. It is usually a good idea to keep code nomenclature in-line with that of the view-level, presented to users of the system.

Our next step was to investigate if we could write a gem that was some sort of amalgamation of tools. In practice, this is what a Gemfile gives us. This approach could be a little fragile due to dependency inconsistencies between different versions of gems.

Finally, we decided to produce a set of documentation that could be used as a reference as to which tools to use when building a new CMS for a client. That set of guidelines is, in fact, this blog post.
