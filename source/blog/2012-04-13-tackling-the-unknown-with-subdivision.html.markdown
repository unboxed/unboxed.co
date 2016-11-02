---
date: "2012-04-13 23:32:00 UTC"
published: true
title: "Tackling the unknown with subdivision"
authors:
  - "Christopher Patuzzo"
tags:
  - Testing
  - Rails
---

<p>I discovered <a href="http://travis-ci.org/" target="_blank">Travis CI</a>&nbsp;the other day. It&#39;s a distributed platform providing web-based continuous integration for your projects. Erm... right?</p>
<p>In simpler terms; Travis tests your projects against a wide variety of setups. It monitors your code repository and re-runs the tests when a change is detected. This is especially useful if you&#39;re building something that needs to work with significant tolerance regarding environment and platform- gems, for example.</p>
<p><strong>After getting over the fact that Travis is a free service,</strong> I immediately began setting up my gems with it. My smallest gem was up and running within five minutes... I was impressed! By the time I&#39;d moved on to my largest, things weren&#39;t so rosy. There were patches of contiguous failing tests, providing absolutely no clue as to what the cause could be. This can be a frustrating situation to find yourself in and it&#39;s something I believe every developer has to learn to deal with.</p>
<p>At this point, I re-ran those tests locally and everything was passing. This highlights exactly why services such as Travis exist and why <strong>good test coverage is at the heart of successful development.</strong> Something was wrong, but without continuous integration, I&#39;d have been totally oblivious to that fact.</p>
<p>At this point, I had a problem that I couldn&#39;t reproduce locally. Inconvenient, but manageable. I&#39;d have to debug those tests on Travis by pushing small changes, triggering a rebuild and looking through the test output. Not ideal, but a simple script helped speed things up: git add . &amp;&amp; git commit --amend &amp;&amp; git push -f</p>
<p>I&#39;d solved the problem of not being able to debug my code. Now all I had to do was debug my code! To save some more time, I modified the Travis build script to only run the tests that were failing. In doing so, everything suddenly passed. <strong>I&#39;d stumbled upon a clue- test dependency.</strong></p>
<p>One tenet of TDD is to keep tests independent of one another wherever possible. If tests only fail when run in succession with others, it means that something is &#39;bleeding&#39; between the tests. This is not a good situation to be in.&nbsp;So how do you go about figuring out which test, or tests, are causing problems? Have you ever played the guessing game?</p>
<p>It&#39;s very simple: Choose a number between 1 and 100 while someone tries to guess it in as fewer turns as possible.&nbsp;The best approach is to subdivide each time. Is it greater than 50? Yes. Is it greater than 75? No. Is it greater than 67? Yes. Etc. Using this approach, you will always guess correctly in seven turns or fewer, which is the optimal solution.</p>
<p>I applied the same thinking to tracking down this bug. I subdivided the tests to be run before those that were failing and checked whether they were now passing. <strong>This allowed me to eliminate half of the tests each time.</strong> This very quickly got me down to one test. It was nothing particularly unusual, so I began subdividing lines within that test. I now knew exactly which line was causing problems, and subdivided a final time to discover which term in particular was problematic. After thirty builds, or so, I knew exactly what was contaminating some completely unrelated tests elsewhere in the system. A result that a &#39;scattergun&#39; approach would not have achieved within any reasonable amount of time.</p>
<p>After chasing the variable in said term back to a model, I found the problem. I hadn&#39;t frozen a constant, which was being assigned to a variable, which was then being shifted and hence mutating the constant. <strong>An illusive bug, to say the least, with a crippling affect</strong> on unpredictable parts of the system. Needless to say, I&#39;ll be keeping a closer eye on my constants in the future, but that&#39;s not really the point...</p>
<p>I think debugging is a separate skill that is often underrated in terms of its learning potential. I think you can glean an awful lot about a system or language by diving into the heart of a problem and developers shouldn&#39;t be afraid to do so. Taking some time out to learn how to use debugging tools should pay dividends further down the line. It&#39;s also important to have a structured and pragmatic approach and although naive, subdivision worked well in this case.</p>
<p>&nbsp;</p>

