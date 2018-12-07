---
weekly_roundup: true
title: "Roundup: requiring Ruby code, advent of code, the crypto-rich, 
and things I learnt in 2018"
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

## Advent of code 2018 - [Elena T](/people#elena-tanasoiu)

https://adventofcode.com/2018

Advent of code is live - one coding challenge every day until Christmas, if you're into that sort of thing. 

## Four days trapped at sea with crypto's nouveau riche - [Elena T](/people#elena-tanasoiu)

https://breakermag.com/trapped-at-sea-with-cryptos-nouveau-riche/

How one person sets sail with the crypto-rich, a few hours after a bitcoin crash. 

## 52 things I learned in 2018 - [Elena T](/people#elena-tanasoiu)

https://medium.com/fluxx-studio-notes/52-things-i-learned-in-2018-b07fc110d8e1

Surprisingly interesting read.

## Track of the Week - [Lawrence R](/people#lawrence-richards)

I've been binge watching Toast of London and hence the theme tune is in my head. It's pretty good and the video's a bit of a tear jerker.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Rdqu-HObUbo" frameborder="0" allowfullscreen></iframe>

[Matt Berry – Take my hand](https://www.youtube.com/watch?v=Rdqu-HObUbo)
