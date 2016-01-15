---
date: "2014-10-10 10:46:00 UTC"
published: true
title: "Diving Into the Front End"
author: "Neil Van Beinum"
tags:
  - Rails
  - Design
---

I recently completed my first stretch on a project as a front end developer here at Unboxed. In this article I'll share some basic principles and tools that I've learnt about along the way with the help of [Tom](/people#tom-sabin) and [Alex](/people/alex-bobin) in particular.

##CSS Architecture
Preprocessors such as SASS allow front end developers to split styling rules into multiple "partial" files which are merged into a single CSS output. It's really nice to have the styling rules compartmentalised in this way and I found it helped me to think of the site as a collection of components which can be reused, instead of a bunch of pages.

We decided on a fairly flat structure for our partials in this project with separate files for typography, variables, mixins and styles for specific pages as well as layout components such as the site footer and header. A nice example architecture is outlined [here](http://www.sitepoint.com/architecture-sass-project/).

##CSS extensions
The SASS language extends CSS in number of useful ways. Here are a couple of simple things that helped me.

Media queries can be nested in the same rule:

    .component {
      width: 100%;

      @media (min-width: 960px) {
        width: 50%;
      }
    }

This nesting wouldn't be possible without a preprocessor. Instead you would need to hunt down the media query and the rule within it. Here it's all under the same rule.

A media query such as the above is painful to type out all the time. We also didn't want to have those magic numbers everywhere so we used SASS variables for the breakpoint widths and a mixin to make the intent clearer. [This post](http://daniel.furzeface.com/blog/my-sass-media-query-mixin/) uses a similar approach and provides a very nice shorthand for the above that would look like this:

    .component {
      width: 100%;

      @include MQ(L) {
        width: 50%;
      }
    }

##Front End Tooling
I also discovered a few neat tools while I was working on this project:

[Browser Sync](http://www.browsersync.io/) is a tool that watches your HTML and CSS for changes and injects them into multiple browsers without requiring a browser reload. It can also be used to synchronise browser scroll position, navigation and form inputs, making it handy for demos of responsive sites.

[Uncss](https://github.com/giakki/uncss) analyses your HTML and CSS and strips out any unused styling rules. This can useful if you're including a front end framework but only using a few of its rules.

[Ish](http://bradfrostweb.com/demo/ish) is a site which, given your URL, will display it at “small-ish” to “large-ish” resolutions, as well as slowly moving between them. The idea behind it is that it encourages you to design for all widths, not just the most common device sizes.

##Note on using Bootstrap
The Bootstrap front end framework includes many styling rules and classes. The admin section of our site is dependent on Bootstrap styling and its grid system. Bootstrap was also useful during the prototyping phase. However the customer-facing "front end" of the site was styled using very few Bootstrap classes. Most of the elements such as headings, buttons and forms had custom styles. The layout for this section was also relatively simple. My impression is that we gained finer control and cleaner markup for much of this section by using our own styling.

I had an idea that a custom grid is complex but that's not necessarily the case. [Don't overthink it grids](http://css-tricks.com/dont-overthink-it-grids/) describes how to create your own simple grid system.

##"Got it" moments

Finally, I had a few "got it" moments which stuck with me when colleagues talked about front end approaches:

<i>“All elements are dying to go down and left unless your CSS stops them.”</i>

<i>“The HTML elements may be nested deeply but that doesn't mean the CSS selectors have to be nested too. Using less specific rules means that the CSS will be easier to manage later.”</i>

<br/>
Overall, I enjoyed diving into the world of front end and I'm looking forward to applying what I've learnt to the next project.
