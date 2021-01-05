---
title: Building collaborative relationships between designers and developers
authors:
  - Claudia Hopkins
tags:
  - Culture
  - Design
  - ''
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/7686ad35437ee284cbbd261c84ced427.png
date: '2021-01-05T11:43:32+00:00'
published: true
---
Designers and developers speak different languages, have different needs, yet we are still working towards the same goal. Through my time at Unboxed, I have been working on making the transition of features smoother from design to development. This article includes various activities that we have trialed over the course of one project to ensure that there is clear communication and a successful collaboration.

**Activities trialed:**

* Design and research debriefs
* Creating two prototypes
* Collaboratively writing user stories
* Developers joining user research sessions

**Collaboration beyond activities:**

* Being adaptable and responsive
* Being present to answer questions or hop on a call
* Mentoring and learning

**Ongoing challenge: **

* Evaluating the Minimal Viable Product

# Activities trialed

## Design and research debriefs

After user research synthesis had taken place, the designer and researcher would host a one hour session towards the end of the sprint for the whole team. The purpose was to share the outcomes of the research, and the direction of features. This was a way for me, as the designer, to ask questions about feasibility, while the developers could ask questions about the user flow, feedback, or upcoming changes. 

![Diagram of sprint activities, where design debriefs occur close to the end of the sprint, after synthesis](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/7686ad35437ee284cbbd261c84ced427.png)

_Sprint structure where the design debrief sits closer to the end of the sprint. _

Tips for ensuring the time is worthwhile:

1. On the board, have each prototype screenshot followed by sticky notes about that screen. Colour coordinate sticky notes so each 'User insight' has a supporting 'Quote' and 'Action'.
2. If the action is a question to developers or something important for them to know, I would then tag it with 'Developer'
3. Organise sticky notes, so the ones of highest priority are at the top to ensure the most important points are covered. Minimal design changes won't need to be discussed, for example, content design changes.

Since, these sessions have been implemented in Discovery phase projects to have a more in depth session about user research findings with the product owner and core team. We find that this enables a more focused session, as the Show and Tell has a wider lens, yet cognitive overload can be a challenge. Within a Discovery Project, the research is often a lot broader and therefore harder to take in at once compared to a Beta where insights can be organised by the webpage tested. Prioritising and organising the insights into categories or steps within a journey can be easier for people to digest. When presenting, first explaining what will be covered and the format, and then taking people through it slowly is beneficial.

![Digital board from synthesis with prototype screenshots and organised post-it notes below each one](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/015eb6eb3fdf76eb590a1cd0d2f2efda.png)

_Digital synthesis of user insights, quotes and action for each screenshot_

## **Creating two prototypes**

Often when creating digital products, design and user research are a step ahead of development. This ensures that features are validated before they are built. Early within this project, a prototype was made for testing; however it was a lot more experimental and detailed than the skeleton journey that the developers needed to code. Therefore, the features for coding were very basic and did not match the prototype. This created a lot of confusion about what was required, especially as seeing more functionality on the prototype was exciting. 

Therefore, to make it easier and ease communication, I created two prototypes. One was for testing with users (which had more content and more functionality to test), while the other prototype had a rough skeleton. Using the GOV.UK prototype, this process was relatively fast.

![Screenshot of website prototype created for developers to reference.](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/99059ea22cb18c41c2699d3a87ca220f.png)

_Developer prototype version 1: Simplifying the user steps for the skeleton journey_

![Screenshot of web prototype used in user testing and research](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/a0e7176f19ca924cab5f7606623f83ad.png)

_Research prototype: Increased fidelity to understand the user flow and questions _

Tips in creating prototypes for developers:

1. **Be clear about what text is static, versus dynamic**\
   \
   After creating the skeleton version, there was some confusion about what information was static and what would come from an API. Developers often refer to this as hard coded (always there) versus dynamic data (that comes from an API or a variable that can change). In the second version of the developer prototype, I started using square brackets on variables to help developers differentiate between hard coded and dynamic data. \
   \
   On the testing prototype, I continued to use fake data from a planning application so that research participants did not get confused, and the information presented was realistic and believable. This reduces any extra cognitive effort they would have to do interpreting the prototype. For example, in the example image below, under Fast track application, on the developers version I would put \[## Address, Street name, AB# #CD] so they knew this was not standard text. On the testing version, I would put a real address.
2. **Create coded templates to save time and be more consistent**\
   \
   When a prototype begins to grow and get harder to maintain, create and implement coded templates to ensure that individual pages have consistent elements. For example, I created templates for my accordions that are present on multiple pages. From a prototyping perspective, this saved me time when making revisions to a new version of the prototype because I only had to make the change once to the template file. From the developer's perspective, this ensured that there was one source of truth for a component, with less styling inconsistencies. Therefore, by structuring my own code in a similar way to the developer conventions, there was less room for error and was helpful for the team to produce. For more information on how to create page templates using the GOV.UK prototype kit, see my other [blog post on creating back-office systems](https://medium.com/ubxd/using-the-gov-uk-prototype-kit-for-back-office-systems-cd0f30129dbf).

![Screenshot of website prototype for developer reference. This one uses [] around text that needs to change on the product.](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/b3c101458ebd4e610aec5c8d62e06475.png)

_Developer prototype version 2: exposing dynamic versus static data_

Using the GOV.UK prototype kit has additional benefits because developers can take the layout and CSS easily. There are less unknowns than when developing a clickable prototype.

> Having a designer-who-codes on the team who has a holistic understanding of everything from user needs to technical challenges is like having a superpower ;-) Your GDS knowledge saved us a heap of time because we were able to take a lot directly from the prototype 
>
> \- Developer

Although generating these prototypes was relatively fast, keeping two prototypes up to date was a challenge. Another possibility which may have been easier could have been starting out with wireframes, as outlined here:

> In retrospect, I wonder if there is a supplementary, more lightweight prototyping approach that can be used to communicate flows between pages. Maybe wire-framing? We had some "skeleton" stories at the start of the project, which might benefit from this.
>
> \- Developer

## Collaboratively writing user stories

User stories are used to create tickets that developers will achieve within a sprint. Writing user stories ensures that what is built relates to user needs. One challenge that the research and product team had to overcome was what was collectively seen as important to include in these stories, as the teams often have quite different views. For example, developers often need to know quite minute details on how the application should behave if the user inputs incorrect data or does something unexpected. This is often not included within the prototype as it is not a part of the main user flow, but it is important to capture unhappy paths to solve these problems now, rather than redeveloping it later. To ensure the right information was included, we created a user story template, and began co-writing them prior to planning. 

The template we used included:

1. **Context**\
   Within this section, we include details about where this story sits or in relation to what user flow and need it is.
2. **Prototype **\
   This is where we give a link to the prototype page
3. **Technical** \
   Developers fill this section in if they need to document strategies about the infrastructure or databases.
4. **Acceptance criteria **\
   This section gives developers the requirements that need to be met. The product team uses this as a checklist to ensure that the feature is complete.
5. **Dependency **\
   If the feature discussed requires another story to be completed before working on this, we can link that story in this section and if necessary, explain why.

![Screenshot of a user story that developers used within a sprint](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/1f9aa059c62ce57a1d882c551df57816.png)

_User story example showing the template in use_

Working with the technical architect to write these stories, enabled me to understand their needs and what details were important to them. After a few sessions, I then started writing them independently and then getting feedback on them to save some time. From the beginning of the process to end, my stories changed drastically as I started to understand what details were important to developers. For example, instead of including heavy details about what styles and typography to use, I focused more on the functionality. This is especially true when using coded prototypes, versus image-based, or clickable prototypes. Developers can easily tell what the font size should be based on the HTML and CSS used; however, it is harder to create a single coded prototype that includes all the possible outcomes of user error or actions.

> I agree and I really enjoyed writing stories and practicing this together. For me the most important part of A/C writing is working out what the new inputs and outputs are. Things like static copy, finer points of layouts and of course things like fonts etc can be left in the prototype.
>
> \- Technical architect

## Developers joining user research sessions

Normally with remote user research sessions, we would have three people join the session: the researcher, the designer and the participant. Keeping attendee numbers low helps the participant to speak freely and not feel intimidated.

For a few weeks we needed to have another notetaker and the developers joined in by coming to individual sessions. It was a really wonderful way for them to understand the user struggles and the reason for why features were changing. Everyone came out of the sessions really enthused. The types of notes developers took were also really detailed and gave a slightly different angle than those taken by other team members which added a lot of value to the research.

Their enthusiasm also showed that although the design debrief goes through the same findings, it is not as compelling or effective as hearing the user and their voice. There could be an opportunity to play back video or audio segments from the research during design debriefs to increase empathy for the user throughout the whole team and make these sessions more effective.

The only slight complication is that if anyone joins a single session in a round of user research, that feedback feels more relatable and therefore higher priority to that individual. It is then up to the researcher to ensure that one participant's feedback does not outweigh others. This doesn't mean that one person shouldn't join a single session, but is something to be aware of.

# Collaboration goes beyond activities

Overall independent all these processes, the developers' feedback overwhelmingly suggested that the most important features of a successful collaborative relationship was:

1. **Being adaptable and responsive**\
   \
   "The design debrief meetings and user research process have been invaluable and integrated well within the development process and ensuring its success. Whenever the current process was not working, you were always there to help the team adapt with making a new version of the prototype. This was highly appreciated."
2. **Being present to answer questions or hop on a call**\
   \
   "Design debrief was really helpful, plus I found general chatting in Slack (in Bops Tech as well as BetaBops) much more productive for quick questions rather than setting up formal review sessions. I feel general comms between you and the dev team are really, really good, and most of that is down to you reaching out and engaging with us"
3. **Mentoring and learning**\
   \
   Another positive outcome was learning more about Ruby on Rails and what the developers were up to. I had one mentoring session with the technical architect to see the back-end and gain a wider understanding of how it was built. By being curious about their processes, I was then able to ensure that user stories and other aspects were covered. This session also taught me about partials, which I was then able to create within my prototype to increase efficiency (which I wrote about in [this blog](https://unboxed.co/blog/challenges-and-opportunities-using-the-gov-uk-prototype-kit-for-back-office-systems/)).

# Ongoing challenge: Evaluating the Minimal Viable Product (MVP)

The one thing that we identified as a need for improvement within our processes was ensuring that the design prototype was as simple as could be for the MVP while meeting user needs. The current format of the design debrief did not allow enough time to achieve this, moreover there would be too much cognitive overload to think about the user feedback and prototype simplification. Our team was also built of naturally divergent thinkers, so ensuring that we narrowed our scope is crucial.

Often we would refine the prototype based on changes, create user stories, and then bring these stories into planning. During planning, someone would then have an idea of how to make the prototype simpler, but this should be done prior to that session as a lot of time would then be wasted creating the prototype and stories. Another problem was that if someone missed the design debrief, they may not understand why certain decisions were made and this would require a lot more conversation.

Feedback from developers on how to better evaluate the MVP:

> Maybe it could be useful to have a set part of the design debrief where we look ahead at upcoming designs and see if they impact stories we are working on. A quick whip-through the existing stories to see if there are bits that may be cancelled out by future user stories could be a good thing to integrate if there's time?
>
> \- Developer



> I wonder if we could try posting videos of designs / flows in Slack, and then encouraging people to supply input in the thread if they have ideas to help simplify things. I wonder if that type of communication would produce more discussion, especially when remote and people are on multiple projects.
>
> \- Developer

Therefore, some changes could be:

* Ensure that everyone who attends planning comes to the design debrief
* On the alternative week to design debriefs, have a design critique focused on simplification
* Or, record a video of a prototype walkthrough and have individuals send ideas on simplifying it

If successful, by implementing another way to evaluate the prototype, the process of going from design to story writing, to planning and then to development would be smoother. Less time would be wasted re-doing steps when a feature is simplified.

In the next project phase, I hope we can better improve our processes for evaluating the MVP and ensuring it is in its simplest form before reaching development.
