---
title: Is now the time to build a national platform of planning data?
authors:
  - Michelle Isme
tags:
  - Agile
  - Design
  - Innovation
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/a34fa55a2d55ab79ac6eef8ec271334e.png
date: '2020-07-08T14:20:00+01:00'
published: true
---
![null](/assets/images/uploads/planning-local-to-national.gif)

**Quick answer:** we think it might be!

We’re currently building a new back office system ([BoPS](https://bops.digital/)) for council planners to more easily assess planning applications from householders. 

However, when an application comes into the council it doesn’t just need to appear in the back office system - the council is also required to publish planning applications, as outlined by [planning legislation](http://www.legislation.gov.uk/uksi/2010/2184/article/36/made).

And this is where planning registers comes in.

Each local authority has its own planning register where it publishes planning applications and decisions. With this in mind, we’ve developed a simple api to allow data about applications to flow through and out of BoPS i.e onto a register. 

The problem, however, is that planning registers are currently provided by existing back office planning systems and they are generally not open to allow alternative systems to push data to them. 

We’re certainly [not the first to mull over this problem](https://digital-land.github.io/blog-post/a-short-history-of-planning-application-data-projects/) but it’s not something we can ignore now that we’re developing an alternative back office system.

# What are planning registers used for?

As well as providing a public audit trail of planning decisions, planning registers also provide a vehicle for getting feedback on applications. 

We began the BoPS project by focussing on [permitted development applications](https://medium.com/ubxd/how-were-making-it-easier-to-assess-planning-applications-and-why-we-re-starting-with-permitted-b06d5462bf55) and these generally don’t require consultation. 

Now that we are about to move onto handling the assessment of applications for full householder planning permission, we will need to find a way to facilitate consultation… And to do that we need to enable members of the public to easily find and see applications.

The way it works at the moment is largely like this (give or take a few discrepancies between different systems):

1. An application is received by the back office system and validated.
2. The planning officer can now start assessing the application in their back office system. At the same time, the application is published onto the planning register. 
3. The application’s page on the planning register will include links to the application form, drawings and any other documents the applicant submitted. If the proposal requires consultation, there will also be a feedback form that anybody can complete to state whether they support or object to the proposal and why.
4. The council also alerts any neighbours to this page by sending them a letter or an email and the majority of councils also stick a notice to a lamp post near the property.

![Planning application notice on a lamp post](/assets/images/uploads/image0.jpeg)

Planning notices on lampposts - [this isn’t necessarily the way forward!](https://mhclgdigital.blog.gov.uk/2020/05/28/start-treating-planning-applications-as-data-rather-than-documents/)

# What problems need solving?

The most immediate problem, for BoPS, is that we need to facilitate a way for councils to meet the legislative requirements to publish planning applications (the legislation specifies [what has to be on the register](http://www.legislation.gov.uk/uksi/2010/2184/article/36/made)) and allow for consultation. 

If they can’t do this it will likely prove to be a blocker for councils to use the BoPS system.

However, it shouldn’t just be a case of replicating what’s available now because after speaking with over 60 planning staff in different councils, throughout the duration of the BoPS project, we’ve heard about some of the problems that already exist in relation to planning consultations. These include:

* **It can be difficult to find and refer to consultation feedback during assessments** - some officers have told us that they receive an email when a new comment has been submitted on the register. One officer told us that every bit of consultation feedback is turned into a PDF and uploaded to their back-office planning system, which can be difficult to sort through and review during their assessment particularly when there has been a lot of feedback.
* **Feedback from public consultations can be long and time-consuming to assess** - this alone is not the problem. The issue is when objections are raised that don’t pertain to planning policy (material considerations), where the planning officer can do very little about it.
* **Planning staff have to “redact” consultation comments** - comments are submitted via an application’s page on the planning register and then later published onto that page. However, some back office systems require council staff to review and redact personal information before the comment can be published… can some of this be automated?

What we don’t have, and would really need, is research with people who use planning registers and need to provide consultation feedback. However, we have had a look at some of the research others have done, such as Snook’s work on the [Submit My Planning Application service](https://research.localgov.digital/projects/planning-applications/) with Hackney Council, and made some assumptions (that would need to be tested):

* **Planning registers are difficult for people that don’t have any planning knowledge to understand**. Looking at existing planning registers, we felt it was difficult to quickly grasp what a proposal was for and wondered whether the technical and planning-specific content on some registers is understood by the public.
* **The public need more guidance about what they can and can’t object to** - some consultation forms are centred around an open text box and provide very little guidance to applicants. We wondered whether this might be a contributing factor to some of the problems planning officers face when reviewing feedback (as outlined above).

Arguably the above problems could be solved by injecting a dollop of user centred design into the process of building a new local planning register. 

However, publishing local planning data onto a national platform could also help to tackle a few other problems:

* **there’s a lack of consistency across registers** that are provided by different suppliers, which makes it hard to analyse and compare data across different authorities, unless they happen to use the same system. And if legislation is changed each system will need to be updated. 
* **councils can end up with multiple planning registers** when they change their back office systems - unless they are able to migrate data from their old register into the new one (and it’s often not possible to do that) their residents will be required to search through both registers which, as mentioned above, may also look different.
* **it is difficult to get an up-to-date picture of planning on a national scale** - although MHCLG publishes [national planning statistics](https://www.gov.uk/government/collections/planning-applications-statistics) these are done on a quarterly basis, and are drawn from the [PS1 and PS2 reports](https://www.gov.uk/government/publications/district-planning-matters-return-ps1-and-ps2) that each council has to collate and send to them.

The last point is particularly problematic for projects like BoPS. 

Planning officers often need to check the planning history of a site when assessing a new proposal. For example, if an applicant wants to extend their property by 3 metres at the back, and this is permitted under planning legislation, the officer needs to make sure the property hasn’t already been extended before.  To do that, now, the officer will check whether there are any previous applications associated with a site in the back office system.

![Sketches on three post-it notes showing how the same property has had three planning extensions to extend different parts of it over 10 years. The first two applications were granted but the third one was not.](/assets/images/uploads/historical-applications.jpg)

If there was a national platform which pulled data from local planning registers, the officer could simply look up the property on there instead, which would make it easier to start using a new back office system like BoPS. Alternatively, and in an ideal world, that platform might even provide an api so projects like BoPS could pull in planning history and display it to users when they need it!

To understand more about the difficulty of obtaining planning data, I strongly recommend you take a look at this [extensive research](https://digital-land.github.io/project/single-register-of-planning/discovery/) by MySociety.

# Who uses a planning register?

While developing the api, to share data from BoPS, we have also developed a proof of concept planning register that simply lists the outcome of applications - basically whether they were granted or refused. 

![Screenshot of our proof of concept register which lists all of the householder planning applications and the decision that was made on them (e.g granted or refused).](/assets/images/uploads/poconcept-register-list.jpg)

This is not an MVP register because although it’s minimal, it isn’t really viable, as it currently only lists the decision of applications and not the detail of them e.g drawings.

The reason we haven’t developed an MVP is because the users of BoPS (planning officers and managers) are not the primary users of planning registers, and to know what needs to be built we would need to do some more user research.

So, who are the users?

As we haven’t done the research this probably isn’t an exhaustive list but here are the users we know about:

* **Neighbours and local residents** who want to provide feedback on a nearby development e.g the house next door that wants to add an extra storey to their home.
* **Local community groups** that want to stay aware of (and when required) respond to developments in their area. For example, this might be a neighbourhood group that is opposing a major development.
* **Statutory bodies** that also need to provide feedback during consultation. These may include teams based in the council, such as the council’s highways team, but could also be staff working in national bodies that are consulted for their expertise.
* **Planning staff** - planning officers sometimes use their council’s public register to search for data as it is easier than looking for it in their current back office system.
* **Other council staff** - enforcement teams, legal teams etc…

We also suspect that applicants could use planning registers to:

* **Keep updated on progress** - planning officers have told us that applicants call up to ask what stage their application is at. Automatically pushing more updates, and perhaps more specific statuses, to a register might be a way to keep applicants in the loop. However, this problem might also be better solved through the software applicants use to submit their applications.
* **Read consultation feedback** e.g from neighbours
* **Do research before submitting an application** - has anybody else in the neighbourhood submitted a similar proposal? Were they granted permission? Which architects did they use?

And if we think about a national platform that pulls data from local registers, it’s likely that it could be beneficial to other users too, including:

* **Central government** - instead of collating data from each individual council, could they just go and get it directly from a single, national platform? Could that platform even do some of the number crunching for them?
* **Developers and architects** - perhaps to identify planning trends in particular areas.
* **PlanTech companies** - if a national planning platform existed and provided an api this might be of use to companies operating in the "plan tech" space.
* **Number-crunchers and commentators** - I don’t know really what to call these users and they might be any of the people I’ve mentioned above. They might be economists, journalists, market analysts, urban planning gurus. They might write reports with titles like, “20% increase in demand to extend houses, over the last fives years, will push the average house price up by £X”
* And maybe, one day, **historians** that want to understand how an area has changed over time!

Again, for more information about the users of planning data check out the [excellent research](https://digital-land.github.io/project/single-register-of-planning/discovery/) that MySociety have done in partnership with MHCLG’s Digital Land team. 

\--

So, that’s why planning registers are important, who uses them, and the benefits that could come from bringing planning data together onto a national platform. Tomorrow, I’ll share some ideas we’ve prototyped for what an alternative planning register could look like…

If you have any thoughts or comments please share them with me on twitter @icoo or email michelle.isme@unboxedconsulting.com - planning can be a minefield so please let me know if I’ve missed anything! :)

##
