---
date: '2017-05-22 17:42 +0100'
published: true
title: >-
  Getting stories to 'Done' faster: Using retrospectives and team principles to
  boost teamwork and accelerate delivery
authors:
  - Matt Turrell
tags:
  - Agile
---
A project I’ve worked on recently has had a recurring problem of flat burndown charts, with sprints feeling like they were becoming mini-waterfalls.<br/>

Here’s an example:<br/>

![Flat burndown chart](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/6234652f6d358ee04035e07ac5bbde96.png)

This isn’t good as you have no value delivered through the sprint, sign-off is back loaded to the end of the sprint which increases the risk of missing the sprint commitment, bugs are found and (hopefully) fixed later on and there’s little visibility through the sprint of what will actually be achieved. To name but a few.<br/>

There were always good reasons for this happening, but we were still experiencing the problem after a number of sprints.<br/>

After a particularly challenging sprint, I decided to change the approach for the retrospective, to hopefully empower the team to take control of this.<br/>

In the days running up to the retrospective, I asked the team in Slack to think of a way to answer the following question and send it to me as a private message, “How can we … ?”.<br/>

At the start of the retro, I put all the suggested questions on the wall and asked the team to dot vote on the one they would most like to address.<br/>

Overwhelmingly the team voted for “How can we get stories to 'Done' faster?”.<br/>

What resulted was a constructive hour-long conversation about a wide variety of principles we could try in the coming sprint to help us achieve this goal.<br/>

As a result of this, the next sprint’s burndown chart was much healthier:<br/>

![2](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/44c1d19797d43acbdeb41beaf0754a2a.png)

The chart’s not perfect, of course, but it showed a clear change in the right direction.<br/>

In the following retrospective, I put all the principles we’d agreed to live by in the previous sprint on index cards on the wall and asked the team to rate themselves on each one, on a scale of one to ten with post-its (naturally).<br/>

This highlighted principles we needed to discuss and to refine, for the coming sprint.<br/>

We followed the same process in the next retrospective, by which point the ratings were much higher and the principles had become integral to the way the team was working.<br/>

Since doing these exercises, I’ve had the privilege of listening to some of the best team collaboration conversations of my career, with the team totally motivated to deliver their sprint commitment.<br/>

These are the principles the team arrived at (I’ll expand on some of them in future posts):<br/>

1. Strict Work In Progress (WIP) limit of 4 Product Backlog Items (covering 'In Progress' to 'Done')<br/>

2. Everyone is responsible for picking up pull requests (PRs)<br/>

3. If it's your PR, you complete it<br/>

4. Don't check-in on a broken release<br/>

5. Until the release is green, don't start another task<br/>

6. Ensure early sight of stories with PO (Product Owner) / Testers / UX|Design (ideally before PRs)<br/>

7. The developer reviewing the PR must see the acceptance criteria applicable to that PR being met, before it can complete<br/>

8. Stand-up format: prioritised story based rather than person/activity based (priority numbers in card headings)<br/>

9. Only testers can move the cards into test<br/>

10. Descriptions on all PRs<br/>

11. When implementing a story, if we start to deviate from the way we said we'd do it in planning, hold a team conversation<br/>

12. Add implementation notes to stories during planning (if appropriate)<br/>

13. When implementing stories, consider whether any documentation is required<br/>

14. Pair in the team when making fundamental changes<br/>

15. In planning, prioritise the biggest/riskiest stories to be tackled first<br/>

16. Team conversation as soon as there is a red release<br/>

17. If there's a release/environment issue and it's your CI Build or PR, pair up with someone in the team who knows about environments/release pipeline<br/>

18. When writing tests, pragmatically consider their performance<br/>

19. All Devs sanity test using IE not Chrome<br/>

20. Nominate a person in planning to write the implementation notes (tasks) for each story (if required)<br/>

21. Small PRs<br/>

22. Pragmatically decide branching strategy on a story by story basis (e.g. task based or other)<br/>

23. Disable items not ready to be used to prevent blocking the pipeline<br/>

24. Use 'WAIT FOR' in tests rather than 'THREAD SLEEP'<br/>

25. Self-organisation<br/>

26. Only the PO can set priorities<br/>

Of course, there are always challenges delivering sprints. That’s one of the reasons we’re here. Constantly looking at the way the team is working, trying and testing new approaches will help those challenges become much more manageable.<br/>

It’s easy to fall into the trap of doing the same retrospective format each sprint. It’s worth keeping an eye on this, that one hour slot every two weeks can be used to make a massive positive impact on the team and on delivery.<br/>

