---
date: '2017-04-06 16:40 +0100'
published: false
title: 'Testing in the sprint following development, should you do it?'
authors:
  - Matt Turrell
tags:
  - Agile
main_image: 'http://i.imgur.com/RjCt9QL.png'
---
I was with a developer friend recently who asked to pick my mind on an agile challenge he’s been experiencing at work.<br/>
<br/>

<b>The problem:</b> how do you deal with the time lag between Dev and QA, leading to devs twiddling their thumbs at the end of the sprint. Their solution, do the testing in the following sprint.<br/>

Alarm bells rung in my mind, having experienced this practice before.<br/>

My friend also said that they knew that the process isn’t Scrum, but it’s something that works well for them.<br/>

I’m a pragmatic guy and don’t believe in following process for process sake. However, if you stick to the core principles of Scrum it can be very effective for delivery.<br/>

For me, splitting testing into sprint +1 is a step (or two) too far.<br/>

One of the main benefits of Scrum is that during each sprint, you’re producing potentially shippable functionality to add value for the users.<br/>

![Scrum board in action](http://i.imgur.com/RjCt9QL.png)

<br/>
The longer it takes to get that functionality ‘done’, the less agile you’re being.<br/>

It means delays to delivering value, changes becoming stale and requiring refactoring and, perhaps worst of all, it means that the team can’t fully focus on the next thing.<br/>

In this sprint + 1 model, a developer could have put a story down weeks before a tester even looks at it. Some level of bugs are more or less inevitable, which means the developer will have to come back to the story. What does that mean for the current story (s)he’s working on? What if the bugs take a long time to fix, does that put the results of the current sprint and the preceding sprint at risk?<br/>

Yes.<br/>

In the past I’ve also experienced UAT by the Product Owner (PO) happening in the sprint following the testing, so at sprint + 2. This obviously exacerbates the issues.<br/>

When you think of it like this, sprint + 1 is more or less the same as a waterfall project, where dependencies are baked in and the process increases the risk of delays on delivery.<br/>

So, what techniques could you use to mitigate this and get everything completed in a sprint?<br/>
<br/>

# Pairing
Absolutely all team members are responsible for getting stories in the sprint completed. Testers can be writing the automated tests while the developers are writing the code. They can work closely together through development, ensuring that there are no surprises for either party when running the code in a test/integration environment.<br/>

![Developer and tester pairing](http://i.imgur.com/m4zJPRI.png)

<br/>
Working like this will minimise the bugs found if there does end up being a hand-off between dev and test. The automated tests will all be ready at roughly the same time as ‘code complete’ and only a handful of manual tests should be required.<br/>
<br/>

# Visibility ASAP
The earlier your PO has sight of the functionality, the earlier everyone’s expectations are aligned, helping to minimise last minute surprises when (s)he’s running through stories to sign them off. A good way of doing this is to ask the team to demonstrate functionality to the PO before completing pull requests. It may not be the whole user story, but it shows where it’s going early on.<br/>

![Demonstrating functionality](http://i.imgur.com/ih8F7T2.png)

<br/>
# Granularity
Make stories smaller. There’s almost always a way to make a story smaller, but it can often bring either team members or the PO out of their comfort zone and there may be objections of “there’s no point in implementing these two stories separately as they’re both using the same module of code” or “we can’t deliver the story without this particular functionality”.<br/>
<br/>

The point of stories is that they’re small, independent and user-oriented.<br/>

![Smaller stories](http://i.imgur.com/tVrarS5.png)
<br/>

If the team want to implement two stories together as one, remind them that the bigger the piece of work the longer it’ll take, the more testing there is and the more complexity (a.k.a. risk of bugs and misinterpretation). In turn that means the story may not get completed in the sprint.<br/>

Even if it means revisiting the same area of code later in the sprint, it’s better to decouple the stories, giving more certainty that they’ll be delivered in the sprint.<br/>

In the case of a PO not wanting to split a story, you can remind them that a key point is that they’re <b>potentially</b> shippable. Just because a story is done, doesn’t mean the PO has to ship it. It’s perfectly valid to hold off until there is sufficient user value.<br/>

The key thing is, keep the stories small and keep the cards moving across the board to done.<br/>

So, if you ever consider deferring testing to the following sprint and making that your standard process, consider the impact it’ll have on overall delivery, agility, responsiveness and team productivity.<br/>

I’d recommend trying hard to avoid it. Give the tips here a go and let us know how you get on.
