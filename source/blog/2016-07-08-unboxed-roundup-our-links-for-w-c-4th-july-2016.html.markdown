---
weekly_roundup: true
title: 'Unboxed Roundup: Our links for w/c 4th July 2016'
date: '2016-07-08 13:30:00 UTC'
author: 'Paula Stepinska'
tags: # (Delete as appropiate) 
- Culture

---

## CSS is more than classes - [Murray S](/people#murray-steele)

http://alistapart.com/article/meaningful-css-style-like-you-mean-it

I'm not entirely sure what I think about this article.  I do like the fundamental idea: don't put loads of extra classes on your elements just for styling make use of the cascade and target elements by using semantic elements and roles.  What I'm not sure about is that the article seems to take a hard line saying you should never use classes, and I'm not sure how such an approach would actually work in the face of a real world website of any complexity.  I think the real complaint might be aimed at CSS frameworks like bootstrap that require many classes (`<a class="btn btn-primary btn-sm">` for example) to achieve their results.  We don't have to throw away classes entirely to avoid that though; we can use CSS-preprocessors to abstract bootstrap away from our HTML as explained [in this coderwall tip](https://coderwall.com/p/wixovg/bootstrap-without-all-the-debt) by [Dan Tao](https://twitter.com/dan_tao).


## LambCI - [Jack B](/people#jack-bracewell)
​
https://github.com/lambci/lambci
​
Currently when choosing CI tools people are torn betwen having to manage their own server to run an open source tool such as Jenkins; or pay extortionate prices for hosted services like Travis and CircleCI, for something that should be quite simple. I was exited to hear about LambCI this week, now you can run your own open source CI without a server! I will be trying it out soon.


