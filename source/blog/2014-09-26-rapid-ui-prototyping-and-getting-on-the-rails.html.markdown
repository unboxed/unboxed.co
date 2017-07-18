---
date: "2014-09-26 15:33:00 UTC"
published: true
title: "Rapid UI prototyping and getting on the Rails"
authors:
  - "Martyn Evans"
tags:
  - Lean
  - Innovation
---

![UI prototype on phone](http://i.imgur.com/qQs8Xcu.jpg)

Having only been in my current position for ten months, there are many members of the Unboxed team I haven’t had the pleasure to work with yet, Chris (Crystal) Carter being one of them. When we both found ourselves "on the bench” a couple of weeks ago, we decided to take some innovation days together.

At the beginning of day one we took a moment to identify a few things we each hoped to get out of the time. Chris was keen to explore some lean product development methods following on from his experience at [The Lean Startup Machine](/blog/lean-machine) and also look at using some third-party UI libraries to speed up product prototyping. I too was keen to explore rapid UI prototyping but I also wanted to learn some Ruby on Rails. Whilst I no longer need to cut code in anger, I really want to feel I could contribute should I ever need to.

During our internal Unboxed product incubator in April I'd pitched an idea that was universally rejected but the itch remained and this seemed like a perfect opportunity to give it a scratch. I had an early working Rails prototype but it was massively limited by the fact that it was practically useless on mobile phones. I'll explain more about the product idea in a future blog post but in previous user testing sessions it had become perfectly clear that access on the go would be a major factor in the successful use of the product and I really wanted to give it to a few people to try out.

Chris and I looked at a number of UI libraries that go beyond the basics of [Bootstrap](http://getbootstrap.com/) and [Foundation](http://foundation.zurb.com/). [Ratchet](http://goratchet.com/) and [Semantic UI](http://semantic-ui.com/) were considered but we settled on the pro version of [Flat UI](http://designmodo.com/flat/) due to the comprehensive set of components and their general look and feel - it seemed to fit well with our target users.

We selected a few critical sections of the application and found that we could very quickly implement the Flat UI elements such that the application started to look usable. The designs are far from polished and we tried not to get too bogged down in the detail. We took out some features that weren’t essential to the overall functionality and focussed on getting it up to a standard that was “good enough” to do some real world testing.

At the end of the two days, I was in a position to make changes to the Rails application AND deploy to Heroku - this is a major win for me as it means I can make changes and test new things in my spare time based on learnings from real users. Chris can step in when it gets tricky and be confident he can add new features that will look consistent using the UI library without the need for too much “design” time.

This ability to prototype quickly and test with real users in real situations is really vital and we hope to continue to nibble away at this product. Once we’ve proved the concept and perhaps tested a few business models, then we might invest in a complete redesign and rebuild but for the time being it seems like two days really well spent.
