---
weekly_roundup: true
date: "2015-06-26 13:30:00 UTC"
published: true
title: "Unboxed Roundup: Our links for w/c 22nd June 2015"
authors:
  - "Murray Steele"
tags:
  - Culture
---

## Google's war on apps - Dom M

https://www.theinformation.com/Google-s-War-Against-Apps

One of the search giant's latest quests is for apps streaming to your phone. (Mobile VMs, anyone?)

## Susy, the best way to build your page layout - [Tom S](/people#tom-sabin)

http://susy.oddbird.net/

I tried using Susy a few months ago to be disappointed it was incompatible with the version of Rails I was using (incompatible SASS version). However, attempting this again with a more recent project I was delighted to find that it slotted in perfectly using rails v4.2.2 and sass-rails v5.0.3.

## Skynet? Defence is still on Windows XP! - Dom M

http://www.itworld.com/article/2939255/windows/the-us-navys-warfare-systems-command-just-paid-millions-to-stay-on-windows-xp.html

Ancient Windows platform behind US Navy warfare systems.

## Simple media queries with SASS - [Tom S](/people#tom-sabin)

http://breakpoint-sass.com/

Another tool to throw in the toolkit, this SASS mixin provides a very simple way to produce mobile-first layouts. A basic example combined with Susy:

    $tablet: 569px;
    $desktop: 737px;

    aside {
      @include span(12 of 12);

      @include breakpoint($tablet) {
        @include span(last 6 of 12);
      }

      @include breakpoint($desktop) {
        @include span(last 4 of 12);
      }
    }

Read further [documentation at GitHub](https://github.com/at-import/breakpoint)

## Anti-Google search growth - Dom M

http://www.fastcompany.com/3046943/how-duckduckgo-rode-a-wave-of-post-snowden-anxiety-to-massive-growth

600% rise in use of anti-Google search engine, DuckDuckGo

## Faster horses? - [Murray S](/people#murray-steele)

https://medium.com/@tarab/the-time-travelling-user-researcher-f8e2b66f8655

[Tara Bloom](https://madebymany.com/people/tara-bloom) discusses [the "faster horses" quote attributed to Henry Ford](http://quoteinvestigator.com/2011/07/28/ford-faster-horse/) in the context of user research.  As a quote it's often used to put-down user research because "people don't know what they want".  Tara goes back in time to point out that, actually, people probably wouldn't have asked for faster horses at all.  In passing she teaches us what user research really is and how to conduct it properly to avoid bias.  Great stuff!

## Got your game on? - Dom M

http://www.pastemagazine.com/articles/2015/06/the-10-best-videogames-we-played-at-e3-2015.html

Most interesting new games from giant US videogames trade show

