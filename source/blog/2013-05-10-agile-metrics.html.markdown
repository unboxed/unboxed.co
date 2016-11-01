---
date: "2013-05-10 09:00:00 UTC"
published: true
title: "Agile metrics"
authors:
  - "Richard Stobart"
tags:
  - Agile
---

I have been asked recently about what metrics we would use to measure an organisation's key delivery metrics.  Several PMOs are keen on metrics and measures - it gives them a reason to exist.

When we deliver training or try to explain Agile Delivery we talk about "The Sausage Machine".  Try to make your delivery organisation like a very efficient sausage machine where high-value raw business requirements are fed in at the top and the sausages - working software in production - is delivered as efficiently as possible.

I would argue that the two most critical measures are *cycle time* - the time from a requirement entering the machine to making it into production and the *value throughput* of the machine - how much business benefit it delivers per period.  Focusing on these two metrics eliminates waste and drives the right behaviours and decisions.

Let's address each of these.

# Cycle time
It may be obvious but the longer it takes to get a feature into production, the longer it will be before that feature will start generating benefit.  Measuring this should drive all sorts of good behaviours.  If you have read Tom and Mary's [Lean Software Development, an Agile Toolkit](http://www.amazon.co.uk/Lean-Software-Development-Agile-Toolkit/dp/0321150783/ref=la_B001IGNU3O_1_1?ie=UTF8&qid=1368103973&sr=1-1) you will have covered the process mapping chapters that explain in detail how to identify [waste](http://www.emsstrategies.com/dm090203article2.html) and eliminate it.  The obvious basics that need to be in place are small features, automation of tests, [environment builds](https://learnchef.opscode.com) and deployments, delivery of working software, not comprehensive documentation, maximise the amount not delivered, [don't have a long requirements gathering phase, a few Agile sprints followed by long cycles of preproduction testing before a big release](http://www.bigvisible.com/2011/06/the-waterfall-sandwich/), streamline your release processes and focus on delivering the highest benefit first.

# Value Throughput

The important emphasis is *value* throughput, not *volume* throughput.  I don't have an easy answer for measuring value, but our business strategy work tries to assign a t-shirt sized value to each epic being delivered.  If this is done (or at least baselined) at the programme management level then it is possible to get an estimate of relative benefit delivery.  Doing this puts the emphasis on choosing the highest value, small items first.

 It is easy to convince senior managers that these are the most imperative measures to measure.  You can then challenge the stalwarts with their "plan the work, work the plan" mantras.

Secondary measures worth measuring are quality and return on investment (ROI).  I'm sure you are fuming at why I have categorised quality and ROI as secondary?  You may actively choose to put services into production, if you are following a Lean Startup methodology that is testing hypotheses then you want to get that into production ASAP, even if it's a bit rough around the edges.  In fact, [polishing is waste](http://blog.mattwynne.net/2013/05/09/two-ways-to-react/).  Even if you are not doing Lean Startup you may also not want to fix known bugs but prefer to leave them in and deliver a high value feature. (Don't leave them in too long - remember the [Broken Window Theory](http://www.codinghorror.com/blog/2005/06/the-broken-window-theory.html).)

And ROI, surely cost is important, why are you only worrying about benefit?  The reason is two-fold, firstly,  by implication the throughput metric ensures highest benefit for a time period and time is analogous to money.  The second reason is that what is measure is what gets gamed.  Tom DeMarco in [Slack](http://www.amazon.co.uk/Slack-Getting-Burnout-Busywork-Efficiency/dp/0932633617) reiterates the increase in flow by introducing slack into a team's time.  The other reason that I discount (not disregard) ROI is that not all costs are measured.  If you can measure the present value of support, infrastructure run costs, product run costs and development costs feature by feature then by all means ROI.  Often the simpler maths is to look at costs as a fixed cost for the product and include cost reduction in the benefit side of the equation.  If the throughput is maintained after the cost reduction then the reduction is beneficial.
