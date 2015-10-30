---
date: "2011-03-13 16:08:00 UTC"
published: true
title: "Steak vs Cucumber as BDD tools"
author: "Petr Zaparka"
tags:
  - Testing
  - Rails
---

<p>When I joined the world of Ruby on Rails development and testing I was quite happy with all the tools and testing frameworks available, I was using a lot of them during development process. Words like Rspec and Cucumber quickly became part of my vocabulary, along with other &#39;magic&#39; words like Kanban and Scrum. BDD, or &#39;<a href="http://en.wikipedia.org/wiki/Behavior_Driven_Development" target="_blank">Behaviour Driven Development</a>&#39;&nbsp;became a permanent part of my life!</p>
<p>It&#39;s crucial for a project, that the features that a customer would like to have implemented into the finished product are captured as well defined stories early on. We&#39;ll eventually use these stories as a template for our tests. Cucumber is an especially good tool for using these stories as templates for testing. So what is Cucumber and what does it look like?</p>
<p>Here&#39;s the explanation on <a href="https://github.com/cucumber/cucumber/wiki" target="_blank">Cucumber&#39;s own wiki</a>.</p>
<p>Cucumber is a tool that executes plain-text functional descriptions as automated tests. The language that Cucumber understands is called Gherkin.</p>
<p>Here is an example:</p>
<script src="https://gist.github.com/868229.js?file=cucumber_feature.feature"></script><p>As you can see, Cucumber allows you to easily describe the behaviour of your new feature. In fact, it&#39;s that good that some of our customers are using Cucumber descriptions as the acceptance criteria on their project&#39;s stories. So where&#39;s the catch? Well, not everything in cucumber is as easy as it may look. Even though cucumber has lot of pre-defined &quot;phrases&quot; to describe the behaviour of an application, you soon find out that sometimes it can be really tricky to preserve the readability of stories that are more complex than just: &quot;And I should see &#39;a yellow box&quot; for example. When it gets tricky it gets really time consuming. And even if you know that implementing the related functionality is really easy - writing the proper, readable cucumber test that makes sense is sometimes very hard.</p>
<p>I&#39;m not complaining about writing tests in general. I&#39;m complaining about how hard it is sometimes to achieve basic readability of tests! Does the average customer really have to understand the tests we use? If they do, then ok - I&#39;m here and I&#39;m prepared to write those nice, readable tests for them.&nbsp;</p>
<p>But what if they don&#39;t care? Well there is another way around: the solution is called Steak.&nbsp;</p>
<p><span>So what is <a href="https://github.com/cavalle/steak" target="_blank">Steak</a>?</span></p>
<p>Steak is an Acceptance BDD solution (like Cucumber) but in plain ol&#39; Ruby. This is how an acceptance spec looks in Steak...</p>
<script src="https://gist.github.com/868232.js?file=steak.rb"></script><p>As you can see, there is a Feature description and a Scenario description, but the rest is Ruby language with Capybara syntax. But why do I think this is so special, and why do I think you should use it? Well it&#39;s much, much faster to write those complex, yet readable tests, and it&#39;s easy to maintain.</p>
<p>Recently, I was working on a tough project where I was the only back-end developer and there was one front-end developer; let&#39;s call him Tom. At the start of this project we were using Cucumber. It took such a long time to write some of the tests, and because there were a lot of front end changes, we had to fix and re-write a lot of these Cucumber tests. Tom found he wasn&#39;t that comfortable writing Cucumber scenarios, so it took him longer to fix them. At the start of the new iteration, I decided to use Steak instead of Cucumber. I discussed with Tom how Steak works, and he preferred it immediately. We started implementing new stories and development suddenly went really well and much quicker. I was writing Steak stories much faster, and Tom was faster too. So, by the end of the iteration there was no complaining about fixing Cucumber stories, and there was a lot more delivered functionality; them were some good times.</p>
<p>Is it Steak final solution?</p>
<p>Maybe, maybe not. It really depends on you and your customer&#39;s needs, but what you really should do is to try it out yourself. You will see how much faster your development process can became.</p>

