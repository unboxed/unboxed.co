---
weekly_roundup: true
date: "2012-06-21 23:00:00 UTC"
published: true
title: "The Week In Dev"
authors:
  - "Carl Whittaker"
tags:
  - Rails
---

This week's tasty dev morsels for your delectation.

##Removing config.threadsafe! (Leo)
[http://tenderlovemaking.com/2012/06/18/removing-config-threadsafe.html](http://tenderlovemaking.com/2012/06/18/removing-config-threadsafe.html)

Aaron Patterson (@tenderlove) wrote an excellent article on the debate around the config.threadsafe! option in Rails, taking the side of those who would want to see it enabled in production by default. I found it a very interesting overview of the current state of concurrency and multithreaded execution in Rails, and I guarantee that it will teach you something new about Rails.

##RSpec's new expectation syntax (Lee)
[http://myronmars.to/n/dev-blog/2012/06/rspecs-new-expectation-syntax](http://myronmars.to/n/dev-blog/2012/06/rspecs-new-expectation-syntax)


##/reFiddle+/ (Carl)
[http://refiddle.com/](http://refiddle.com/)

A fiddle tool for building and testing those tricky regex's.

##My algorithm for finding self-enumerating pangrams found its first solution after 250 CPU hours (Chris P)

This pangram was built by cpatuzzo and it has no more than nine a's, three b's, two c's, three d's, thirty-four e's, five f's, two g's, twelve h's, sixteen i's, two j's, one k, four l's, three m's, nineteen n's, eleven o's, three p's, one q, thirteen r's, thirty-six s's, twenty-six t's, six u's, seven v's, seven w's, six x's, five y's and just three z's.

###How it works:

I turned the problem into error minimisation. Each attempt is an array of character frequencies, which is evaluated (using a lookup table) to determine the error magnitude. The 'closest' solutions are selected for mutation. New attempts are ordered for evaluation according to the distribution of characters in the lookup table (language). The pool of attempts is pruned to ensure it doesn't memory leak and slow everything down at the trade off of occasionally choosing a sub-optimal attempt for mutation. Very few sentence seeds actually have solutions, so there's some code that randomises seeds on occasion.

It's slow and probably not so elegant, but it works. It also makes the naive assumption that attempts with fewer errors will be closer to a solution, which is probably a flawed assumption due to the volatility and chaos of the problem.

[https://github.com/tuzz/pangram](https://github.com/tuzz/pangram)
[http://en.wikipedia.org/wiki/Pangram#Self-enumerating_pangrams](http://en.wikipedia.org/wiki/Pangram#Self-enumerating_pangrams)

##Parameter Chain (Chris P)

As some of you may know, I've been experimenting with finding a general solution to parameter chains in Ruby and chaining Arel scopes through collections. Some progress on both fronts by digging through ActiveRecord::Relation and Delegation. If anyone has insight, let me know. Thanks.

[https://github.com/tuzz/parameter_chain](https://github.com/tuzz/parameter_chain)
[https://gist.github.com/2911869](https://gist.github.com/2911869)

##Talk to the Phone (Rich A)
[http://www.chromeexperiments.com/detail/talk-to-the-phone/](http://www.chromeexperiments.com/detail/talk-to-the-phone/)

Is your life a joyless void of malaise and depression?
Need the comfort of human interaction but have no friends?
Experience the delight of uttering those magical words: 'I love you' into Chrome and receiving a response - any sort of response -  from your beloved browser.

(Man alive, I should be in Marketing or something. I'm clearly a genius at this sort of stuff.)

##CSS3 comedy (Matt P)
tr { transform: rotate(180deg); } It seems the tables have been turned.

##A history of IE from version 1 to 9 (Matt P)
[http://www.techrepublic.com/photos/a-visual-history-of-internet-explorer-from-1-to-9/63758](http://www.techrepublic.com/photos/a-visual-history-of-internet-explorer-from-1-to-9/63758)

##FLAC.js (Matt P)
a fully Javascript-based FLAC decoder. 8.5% CPU usage on a Core 2 Duo. Crazy.
[http://tumblr.dave.io/post/25228910532/flac-js-a-fully-javascript-based-flac-decoder](http://tumblr.dave.io/post/25228910532/flac-js-a-fully-javascript-based-flac-decoder)
