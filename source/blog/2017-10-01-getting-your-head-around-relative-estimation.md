---
date: '2017-10-01 19:37 +0100'
published: true
title: Getting your head around relative estimation
authors:
  - Matt Turrell
tags:
  - Agile
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/1c8b9da32e5a144e2cc8e7868f2f849d.png
---
When I first heard of relative estimation and story points, I found it a challenge to really embed the concept in my mind.<br/>

When you’re used to thinking in days, how do you switch to thinking about these weird arbitrary units?<br/>

The fact is, developing and testing software is complex stuff, so trying to work out exactly how long it’s going to take, when you haven’t even started it, is fraught with uncertainty and is rarely accurate.<br/>

Let’s take a physical analogy which helped me.<br/>

Imagine we’re in a field and can see a building in the middle distance. Hypothetically, you’re an athlete and I use a walking stick.<br/>

If someone were to ask how long it would take each of us to get there, we’d likely give very different answers.<br/>

We could, however, agree that the distance to that building is one distance unit (DU). That then shifts the framing of the conversation. We’re both talking about one DU, regardless of what that means to us personally.<br/>

Now, imagine a building in the distance and one closer, it’s then pretty easy for both of us to say that this one is roughly twice as far away and the other is about half as far away. So, 2 DUs and 0.5 DUs.<br/>

We’re talking the same scale and, because it’s an arbitrary unit, psychologically it’s easier to speak in rougher terms. (It also mitigates the risk of people feeling they have to add contingency to ensure they get the exact figure right).<br/>

When we see a new building in the distance, we can compare it with our original benchmark and agree that it’s however many DUs away.<br/>

This is exactly how story points work.<br/>

Ask the team to select a user story that was implemented by them, which they deem to be medium sized and ideally is a full slice of your tech stack. You can then call that your benchmark story and assign it a story point value. <br/>

My prefered benchmark value is 5, as this gives you plenty of room on either side for smaller and larger stories.<br/>

I’m a big fan of using a common variant on the fibonacci sequence as the scale for story points (1, 2, 3, 5, 8, 13, 20...) as it forces people to make considered decisions on their estimates, particularly between 5, 8 and 13 (“Is that roughly less than double our benchmark or almost three times the size?”).<br/>

![Story points](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/1c8b9da32e5a144e2cc8e7868f2f849d.png)

With any luck, we have a cross-functional highly skilled team, so during sprint planning we’re not assigning work to individuals. By having this shared scale of story points, it stops people getting bogged down in how many days it’ll take someone individually to do something.<br/>

During planning sessions, when you’re talking about new user stories, as you talk through the acceptance criteria and implementation, it’s easy to compare with what it took to implement the benchmark and the team can gain a rough feel for how big this new story is.<br/>

Over the years, in some instances, I’ve heard story points referred to purely as a measure of complexity. In my view, this is part of their purpose but not the whole. I prefer to think of story points as a measure of work or effort, a subset of which is complexity.<br/>

We may have a user story that is technically simple to implement, but extremely time-consuming. Similarly, we may have a relatively simple piece of user functionality, but know that the implementation is going to require some complex logic or integration with a particularly fiddly third party library.<br/>

Consider, why are we estimating?<br/>

![Story point estimation](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/2b167379ffe1a591eac3d289cf797e84.png)

In my view, it’s so that we can gauge how big a piece of work is and by extension what impact it’s going to have on the team’s capacity to deliver the sprint. Additionally, when the story is delivered, the estimate contributes to our velocity - which I’ll discuss in a future post (along with that age old question of “when will it be done?”).<br/>

So, even if something is mechanically simple to implement but is going to take a large amount of effort, we need to know how that’s going to compare with other user stories.<br/>

During planning, we want the team to arrive at a consensus on the relative size of a story.<br/>

Planning poker is a great tool for arriving at this consensus. In some cases you may have a scenario along the lines of a tester coming up with an 8 story point estimate and developers coming up with 2.<br/>

The team need to talk through what’s involved in delivering the story and need to understand it from all perspectives.<br/>

All too frequently I hear of examples where people suggest taking an average of the dev and testers’ estimates. This may be valid in some cases, but the team is there to work together to deliver the sprint. It could well be, in this example, that a story should be estimated at 8 story points, even if one person is doing a big chunk of the work.<br/>

After all, if you only have one tester in the team and some of the work can’t be shared, then it’s going to impact the team’s ability to get other stories to ‘Done’.<br/>

So … always have a benchmark story, always compare the user story you’re estimating with it, talk through the acceptance criteria and how the team are going to implement it.<br/>

Then ask the team relatively how big it is and allow them to reach a consensus.<br/>

---<br/>

By the way, if you’re at the start of a greenfield project or have a new team picking up an application for the first time, it’s likely that there won’t be a user story that they’ve implemented which can act as a baseline.<br/>

In these cases, pick a story from the impending sprint which is full-stack and feels medium size, talk through the implementation and acceptance criteria in detail and if it feels right, choose that as your baseline. In a sprint or two’s time, you can revisit the decision and choose a new baseline once the team has better shared experience… Although after that avoid changing your baseline unless you have significant changes in your team members.
