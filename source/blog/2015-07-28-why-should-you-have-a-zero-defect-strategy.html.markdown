---
date: "2015-07-28 13:36:00 UTC"
published: true
title: "Why should you have a zero-defect strategy?"
authors:
  - "Richard Stobart"
tags:
  - Agile
---

Part of the logic of a [zero-defect strategy](https://en.wikipedia.org/wiki/Zero_Defects) is about psychology: specifically, the psychology of the developer working on code that they know is flawed. The other part of it is just good business practice...<br/>

We’ve all heard many times that the cost of identifying a bug in production is exponentially more expensive than identifying a bug in development.<br/>

If you take an approach of <i>“some bugs are acceptable to roll into production”</i> then effectively what you’re saying is <i>“I’d rather spend more money later than less money now fixing this problem”</i>. If you do that more than once or twice then you start to build your house on sand.<br/>
<br/>

<h2>In practice</h2>
Imagine a developer working on a feature, relying on other components that have some well-known defects in them. They’re relying on these components to get their feature working. The developer thinks long and hard about their feature. They implement the code. They run the tests. Something breaks.<br/>

The natural reaction is to think that the known problems in the dependent components are more likely to be the problem, rather than an unknown problem in the developer’s code. They’ve spent a long time on that code. They’ve thought it all through. It should work.<br/>

The developer knows that the component they’re depending on is flaky, so go ahead and commit this code, knowing there’s a bug in the other feature. That’s not their problem.<br/>

<p align="center"><img src="http://bit.ly/1gUUeg3" alt="Zero-defect strategy"></p>

This problem becomes exacerbated. The developer is not being absolutely 100% pure in their implementation. Buggy code is being delivered, whether it’s in their feature or another feature. The whole problem then multiplies. The next developer comes along thinking they’re relying on the feature they know is buggy. They’re also relying on a feature that doesn’t work because that developer is relying on a feature that’s buggy. They’re going to take more time to fix the feature. It’s been a long time since the original bug was identified. No one seems to care. They won’t waste their time fixing that.<br/>

Their bit of code will work in <b>certain</b> scenarios, but not in <b>this</b> scenario because it’s know there’s a problem. So the code isn’t actually tested for that scenario, even though it’s been written so that one day - if that feature is fixed - that code will probably work (or it may not).<br/>
<br/>

<h2>The situation</h2>
Eventually the whole code base, over time, becomes riddled with holes. Everyone has justified that these holes are acceptable. Every time a new feature is built, it’s being built on a very fragile code base. Only the well-travelled code base paths are bug-free. All other paths are full of pit holes that aren’t understood.<br/>

Maintaining a huge code base, full of pit holes, is very expensive.<br/>
<br/>

<h2>The solution</h2>
The buggy code should be removed. Either fixed or acknowledged that it’s not going to use a feature and remove it. Otherwise a whole load of 'debt' is built up. Not even technical debt, just feature debt.<br/>
<br/>
The easiest thing to do is nip it in the bud. You should be saying:<br/>

* <i>We are going for zero-defect code<br/>
* Each feature we build will have zero-known defects<br/>
* As soon as we discover a defect, we will remove it/fix it/stub out that bit of code, we don’t need it anymore<br/>
* We should invest the time in making sure there are no problems in the code</i><br/>

Malcolm Gladwell talks about the Broken Window Syndrome - the then Major of New York's approach to zero-tolerance of small crimes, like broken windows in disused factories, that tolerate ever-larger crimes. This is exactly that. Manifestation in code.
