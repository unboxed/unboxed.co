---
layout: "blog"
date: "2013-05-24 16:59:00 UTC"
published: true
title: "Dev Newsletter (Week 21, 2013)"
author: "Attila Gyorffy"
tags:
  - Rails
  - Design
---

The next instalment of the Unboxed Developer Newsletter is mainly focused on front-end development practices but I reckon these would be interesting to anybody who's a little bit keen to get a better understanding of web development in general.

## Controlling lines of text in CSS

A collection of [handy techniques](http://css-tricks.com/line-clampin/) to control text content by gracefully 'cutting off' dynamic text.

(submitted by [Andrew Mitchell](http://www.unboxedconsulting.com/people/andrew-mitchell))

## Writing Testable JavaScript

This one totally nails the approach to modular development. A great primer to front end unit testing.

See [the article](http://alistapart.com/article/writing-testable-javascript) on A List Apart.

(submitted by [Carl Whittaker](http://www.unboxedconsulting.com/people/carl-whittaker))

## Yehuda's call to extend the web forward

The sad truth is that while some areas of the browser are extremely extensible, other areas are nearly impossible to extend. Yehuda is pointing out a couple of points about low and high level JavaScript APIs. [Interesting read](http://yehudakatz.com/2013/05/21/extend-the-web-forward/).

(submitted by [Attila Györffy]((http://www.unboxedconsulting.com/people/attila-gyorffy))

## Getting the truth out of email addresses

Stop Validating Email Addresses With Your Complex Regex. [David Celis](http://davidcel.is/about/) [points out](http://davidcel.is/blog/2012/09/06/stop-validating-email-addresses-with-regex/) that validating the format of email addresses is a waste of time, as an address could be valid but still made up. The only way to know is to send a confirmation email.

Leo agrees with the points raised by the author. However, validating the format of an email address will usually improve the input form's UX by catching accidental bad inputs (even if it's just a missing @ sign). Quite possibly the ideal setup would be client-side validation of whatever the user's put into a form field, and server-side validation by means of a confirmation email.

(submitted by [Leo Cassarani]((http://www.unboxedconsulting.com/people/leo-cassarani))

## How to handle Git merge conflicts

Lately I've been using feature branches exclusively and believe it or not, I ended up having a lot of merge conflicts. More than I was expecting initially, that's for sure. The problem is coming from the fact that I develop every story in its own feature branch exclusively and with the increased number of branches the number of merge conflicts also increase. A lot. So I started digging around the web looking for a set of sensible recommendations on how to write code that is less likely to conflict when merged into HEAD. Atomic commits are just one thing, but turns out there are a [coupe of nice and handy features of Git](http://weblog.masukomi.org/2008/07/12/handling-and-avoiding-conflicts-in-git) that you can use when there's already trouble.

(submitted by [Attila Györffy]((http://www.unboxedconsulting.com/people/attila-gyorffy))
