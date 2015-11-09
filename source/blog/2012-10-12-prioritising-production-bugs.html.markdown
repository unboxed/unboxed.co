---
date: "2012-10-12 14:46:00 UTC"
published: true
title: "Prioritising production bugs"
author: "Austin Fagan"
tags:
  - Testing
---

Everything is jogging along swimmingly in the real world, orders coming in thick and fast, the business is booming. World-wide recession, hah! In the development bullpen, velocity is faster than a speeding bullet, they're playing office boules most of the day. But hark! The sound of over five thousand orders plummeting down through the depths of the system sends shudders through the department. Time to down boules and fix the problem.  Suddenly the CEO's door opens and the dev manager is summoned. He knows what's coming but is a bit taken aback when he discovers its not the five thousand customers in limbo that has lit the coals he's being dragged over but the issue that is holding up the order belonging to the CEO's chihuahua-sitter. He points out the devs are working on a solution for the five thousand stuck orders but the CEO is not having any of it. "The order of priority is obvious!" booms the CEO.

Prioritising issues

Most teams will work prioritise with the following categories:

Blocker: An immediate fix is needed in production.

Critical: Needs an imminent fix. Can be deployed in next release.

Major: Its not critical, its not minor.

The lowest orders will be minor and then trivial.

Prioritising issues is always challenging and to ensure the right decision is made, the right people need to be involved in making that decision. For me there are 3 factors that should be considered when setting the priority:

Business impact

What is the issue costing the business? When it comes down to it it may be a person playing the role of the business representative who acts as stakeholder in the prioritisation process but its vitally important that the decision is made clear to the business and kept visible. Its likely the issue would come through the Service Desk and its here where the business can check the progress of the issue. If the Service Desk is separate from the defect management system and both systems have different priority classifications, they should map to the appropriate level. If an issue, with the highest level of priority in the Service Desk, has a medium level priority in the defect management system something is truly rotten in the state of Denmark. If both systems are separate there should be a mechanism to keep them in sync, either manual reporting or automated syncing.

System robustness

Building functionality on top of existing bugs is asking for trouble. In order to avoid compounding the known problems the developers should be kept abreast of known issues. If the support team are keeping their bug cards on a task board then this is a good starting point for maintaining visibility to the devs. To make it easier it's a good idea to keep the cards grouped by component. Before planning sessions the devs can get together with support and get their top bugbears together and make a case for their inclusion in the next sprint.

Workaround viability

Once an issue has been identified and it is affecting customers a workaround needs to be put in place where possible. So when it comes to the prioritising of the issue the team who own the workaround (ie. the team who carries out the effort involved) must be involved in the discussion.  Their input will enable those involved in the prioritisation to assess the viability of the workaround and ascertain whether the cost of fixing the issue outweighs the cost of maintaining it.
