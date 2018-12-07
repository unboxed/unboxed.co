---
weekly_roundup: true
title: "Roundup: requiring Ruby code"
date: '2018-12-07 14:30:00 BST'
authors:
  - 'Neil van Beinum'
tags: # (Delete as appropriate)
- Culture

---

## A different way to require ruby code - [Murray S](/people#murray-steele)

https://github.com/ciconia/modulation/blob/master/README.md

In the past, the only solution for loading libraries in JavaScript was to just
include them in the page and hope there were no global clashes.  This is
obviously bad so many libraries appeared providing solutions to the problem.  
They fought it out in the proving ground of popular opinion, and eventually we 
got the ES6 module system and there was much rejoicing.  In ruby, we have 
`require` and `load` statements, but every file we use with these is parsed, 
run, and it's constants exposed in the global namespace.  This gem proposes an 
alternative model that seems to me to be based on the ES6 module system.  Who 
knows if something like this would ever become part of ruby itself, but the 
ability to require only small parts of a library without worrying about 
namespace clashes sounds really good to me.

## Track of the Week - [Lawrence R](/people#lawrence-richards)

I've been binge watching Toast of London and hence the theme tune is in my head. It's pretty good and the video's a bit of a tear jerker.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Rdqu-HObUbo" frameborder="0" allowfullscreen></iframe>

[Matt Berry – Take my hand](https://www.youtube.com/watch?v=Rdqu-HObUbo)
