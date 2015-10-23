---
layout: "blog_article"
date: "2011-02-25 13:41:00 UTC"
published: true
title: "Agile Tools for the Support Team"
author: "Austin Fagan"
tags:
  - Agile
  - Testing
  - Rails
---

<p>In an ideal world there won&rsquo;t be any problems in production. In an ideal world there&rsquo;s a great soundtrack playing while the dev team, PMO and the business high-five one another in slow-mo.&nbsp; If you&rsquo;re talking about a complex enterprise system even the most able teams will produce code that encounters some problems. Test driven development and pairing will minimise production issues that&rsquo;s true but there&rsquo;s no practice that eliminates bugs and missed functionality.</p>
<p>So what part of the agile world deals with issues in production? Its going to be either a support analyst or someone playing that role. In the enterprise the support analyst will be part of a larger support team. The support team will investigate problems raised by the business. They&rsquo;ll analyse the issue, quantify the problem and raise a bug for the dev team to fix.</p>
<p>So now we&rsquo;ve discovered the support tribe and after careful observation we see they survive by hunting bugs and gathering information. They seem to make a lot of noise but communication with this tribe is proving difficult. Lets enable them with some agile tools!</p>
<h4>Task Board</h4>
<p>The support task board should have story cards representing the high priority bugs in production. A combination of columns and coloured-stickers can be used to give not only the team but also anyone walking past an insight into how the application is behaving in production. The board can also contain a running tally of all the production bugs by priority. Any impediments should also be listed on the board. Kanbanesque limits per column should be aimed for. The limits of the support team must be acknowledged and if there is too much for them to do then actions need to be taken to reduce their workload. If the support team is under the cosh then Houston we have a problem!</p>
<h4>Stand-ups</h4>
<p>Stand-ups are one of the key ingredients for the agile support team and should take place in front of the task board. Each team member in turn goes through what they did the previous day, what they are doing that day and any impediments they face. Each person will have 2 minutes to speak so anything that will take longer than the allotted time can be taken off-line to be discussed by the team or a subset of the team after the standup. Any off-line topics raised can be noted on the task board to ensure they are discussed. Anyone is free to come to the support stand-up, after all it&rsquo;s the best place to get the main headlines on how the code is doing in the wild. Support team members should also attend dev team stand-ups.</p>
<h4>Retrospectives</h4>
<p>The team can have an open discussion about how they did in the last month and come up with actions to improve the team and the process it follows. This should be facilitated by someone outside the team. Mini-retrospectives can also be useful to improve responses to major production incidents and the like. This should happen soon after the incident so lessons can be learned quickly</p>
<h4>Pairing</h4>
<p>Don&rsquo;t worry I&rsquo;m not advocating daily pairing, although why not!&nbsp; Major incidents in production need to be dealt with quickly and having a pair share the load can shorten the investigation time and minimize disruption to the business. Whether they are physically sitting next to each other sharing a keyboard and screen or in constant communication and splitting tasks, pairing in support can be hugely beneficial.</p>
<h4>Co-located Team</h4>
<p>If a particular development team have a lot of production issues why not have the support analyst sit with them?</p>

