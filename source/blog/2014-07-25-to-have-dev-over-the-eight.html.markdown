---
layout: "blog_article"
weekly_roundup: true
date: "2014-07-25 13:30:00 UTC"
published: true
title: "To have dev over the eight"
author: "Murray Steele"
tags:
  - Rails
---

## markdown_checkboxes - [Chris B](https://twitter.com/cblunt)

https://github.com/brightbit/markdown_checkboxes

I found this very handy little gem whilst developing an internal app
which might be useful for other projects. markdown_checkboxes renders
checkboxes from markdown, Github style, e.g.:

    - [ ] Some task to do
    - [x] A task I've done already

It also lets you update the status of the checkboxes by clicking
through a simple PUT/PATCH request. There's [more details on the announcement blog post](http://brightbit.com/blog/2013/12/09/enhancing-markdown-rendering-with-the-markdown-checkboxes-gem/)

## How RSpec stubs and mocks work - [Murray](http://www.unboxedconsulting.com/people/murray-steele)

https://speakerdeck.com/samphippen/the-anatomy-of-a-mocked-call-rulu-2014

This presentation by [Sam Phippen](http://samphippen.com/) is an interesting take on the usual stubs and mocks presentation.  Instead of providing arguments for (or against) a stubs and mocks approach to testing Sam instead tells us exactly how the relevant code from the [rspec-mocks](https://github.com/rspec/rspec-mocks) library actually works.  I quite like this sort of deep dive talk about the design decisions of the libraries we use day-in, day-out as often we treat them like black-boxes, but if we know how they work under-the-hood they'll surprise us less when we use them, and it might even unlock how to use them in a new way we hadn't considered before.

## Design is hard and partitioning is hard - [Patrick V](http://www.unboxedconsulting.com/people/patrick-vine)

https://www.facebook.com/notes/kent-beck/bits-clumps-and-just-right/792597974106402

These are some thoughts on partitioning by [Kent Beck](http://www.threeriversinstitute.org/), which seem to make sense and could be useful to experiment with or to better understand what you might be doing already.

