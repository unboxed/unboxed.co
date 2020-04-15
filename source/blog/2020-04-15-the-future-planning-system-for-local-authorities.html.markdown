---
title: The future planning system for local authorities
authors:
  - Graeme McCubbin
tags:
  - Agile
  - Design
  - Innovation
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/49eb1fadda92b640b3efaa84a9ffa807.png
date: '2020-04-15T17:06:20+01:00'
published: true
---
Planning teams and departments across UK local authorities are currently experiencing a sector-wide problem: the back-office systems being used to process planning applications aren’t meeting the needs of the planning officers that need them to do their jobs:

* Planning applications often arrive incomplete;
* Unintuitive and fragmented interfaces in existing back-office systems slow planning officers down, making it difficult to arrive at decisions quickly;
* Poor data quality in non-machine-readable formats creates manual processes, making it difficult to share data for strategic reporting by external stakeholder groups;
* The inability to integrate with other systems blocks opportunities for innovation and streamlining processes, resulting in local authorities having to rely on the suppliers of legacy systems to update their product roadmaps to introduce required functionality

All of these issues, and more, have a negative impact on the planning officer’s role and the way they assess applications, resulting in lengthy delays and a lack of transparency to a decision.

By focusing on improving the back-office application process, planning officers will be able to perform tasks quicker and more-efficiently, creating a better and more-transparent service for applicants.

![The future planning system](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/e212441f2b00af958d7723b5db08351a.png)

<br/>

# A collaborative, cross-authority project

To solve this problem, Unboxed has been working with London Borough of Southwark & Partners on a collaborative [MHCLG Local Digital Fund](https://localdigital.gov.uk/fund/) project to create a cross-authority back-office of the planning system (project nickname: ‘BoPS’).

Project partners (to-date) include:

* Coventry City Council
* Surrey Heath Borough Council
* Braintree District Council
* London Borough of Croydon Council
* London Borough of Hackney Council
* Greater London Authority (GLA)
* Connected Places Catapult

<br/>

![Alpha phase alignment workshop with BoPS partners](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/8efc953965f7f0656ca9054aa0e05270.png)

<i>Alpha phase alignment workshop with BoPS partners.</i>

<br/>

# Starting with the riskiest element

The back-office side of the planning system is large, intricate and complex, providing both the means to assess applications against a range of policy and local constraints, but also to act as an audit trail that documents which decisions have been made.

To de-risk trying to solve one huge problem in a short, single project phase, as well as to align our efforts with other projects that are working on the public-facing application system, our team has prioritised a focus on building a product to support the ‘assessment and recommendation’ of applications, with our main users being planning officers and planning managers.

![The wider BoPS system](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/c7dac65bc4608898c7af738ba05dcce7.png)

‘Assessment and recommendation’ is the part of the service which provides planning officers a way to review applications and plans, check whether they meet relevant policy requirements in line with what the applicant is proposing to do and any constraints on the property or local amenity, and make a recommendation to their managers on the outcome of the application. In short, this is the part of the service that leads applicants to receive a decision on their proposed application, and is the basis on which planning system processes are primarily created— getting that ‘yes’ or ‘no’ decision.

Through the discovery phase, our team identified that over 50% of planning officers’ time, on average, is spent processing simple “fast-track” applications, such as home extensions and modifications. Based on this data, this project has prioritised the element of the service that makes it easier to assess these types of applications — householder applications.

<br/>

# A more-efficient way of assessing applications

Planning officers can be responsible for managing multiple householder applications at the ‘assessment and recommendation’ stage, all with differing deadline dates. Simple householder applications typically have an eight-week lead time for the full process in which a decision needs to be made and outcome provided to the applicant.

Assessing applications can take anywhere from half a day for a simple Certificate of Lawfulness and up-to two days for a full householder application. Although these applications can rarely be completed in a single sitting, with information going back and forth between planning officers, applicants and consultees, as well as lengthy waiting times (which could take weeks) for revised details and conversations with the applicant and their agent, leading to lengthy backlogs for planning officers.

A lot of time is taken in this process by accessing different documents to gather information, moving between different software windows (of the same application), and copying and pasting.

Our research has found that many householder applications can take a similar format, in terms of the information required, and a lot of planning officers’ time can be spent by inputting the same information again and again across different applications of the same type.

![Engaging planning officers](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/4bd75fbfccb23d997e92010ad9a0cb98.png)

During alpha, our team has worked with planning officers across multiple local authorities to create, test and iterate a prototype to:

* Automatically gather information about the application from multiple sources
* Provide more guidance for planning officers on what should be considered
* Simplify the processing of recommendation and approval of applications

By removing this manual approach for gathering information for each application, the ‘assessment and recommendation’ process can become more-efficient through reducing the time taken to create the application information, enabling planning officers to complete this task faster and more-accurately.

<i>“This would save a lot of time and work in repeating the same tasks as we currently do now.”</i> — Planning officer during a prototype testing session.

![Testing alpha prototypes across multiple local authorities for feedback](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/e5f911fd40b427ce8d7ffa3cfadacc02.png)

<i>Testing alpha prototypes across multiple local authorities for feedback.</i>

<br/>

# Creating a system that works across local authorities

A core part of being a Local Digital Fund project is to create a system that can solve a common problem — BoPS needs to meet the needs of planning officers across multiple local authorities.

Throughout discovery, our team carried out primary user research with planning officers across a wide range of different local authorities (London, non-London, central, rural, larger and smaller) to identify common user needs. 

Research also highlighted some of the biggest differences between planning departments, with some examples including:

* <b>Different authorities have different processes in place</b> — processes are often dictated by the existing systems that are in place, providing limited-to-no flexibility to improve the processes, so authorities can process applications in slightly different ways
* <b>Individuals have their own preferred tools</b> — planning officers have their own preferred set of tools to support the application process, including those to check plans and drawings, find neighbours’ addresses and assess a property’s flood risk
* <b>Each authority is configured locally</b> — each local authority has their own GIS (Geographic Information System) map and local policies for consideration

To overcome these differences, we’re aiming to design and build a system that enables flexibility from authority-to-authority.

<br/>

# Making data available through data-informed workflows

Planning data is of great importance and use to not only local authorities but a wide range of stakeholders, including central government.

GLA gains a London-level view of planning permissions, starts and completions across London through the London Development Database (LDD), and MHCLG gains a national-level view of planning through a variety of initiatives.

Presently, existing back-office systems often capture application data in PDFs, creating a barrier to use for other stakeholders. Other sectors, industries and organisations have an identified need for open planning data, but no easy method of accessing it.

Our team is taking an open data approach to ensure that the data from the BoPS system can be available and useful to inform the entire planning system.

<i>“What? No PDFs? Revolutionary!”</i> — Planning officer during a prototype testing session on the application form.

With the data journey beginning at the applicant-facing application system, our team carried out a technical prototyping experiment to test whether:

* Data can successfully be retrieved from an application system
* This data can be used in BoPS

To carry out this experiment, the team integrated with Hackney Council’s [‘Submit my Planning Application’](http://smpa.hactar.is/) — an in-development public-facing application system, enabling Hackney residents to submit a planning application. Through integrating with Hackney Council’s API, we were able to successfully pull raw application data and application documents into a user interface (based on the GOV.UK Design System) as part of the BoPS system, validating our assumption that this data can be used.

![Coded prototype](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/7f276b73e3b2965511e9b4e2729ba5fc.png)

<br/>

# What’s next?

The alpha phase has concluded with [an alpha phase report and a series of prototypes](https://www.southwark.gov.uk/innovate/collabrative-project/planning-back-office?chapter=21), all available publicly [via Southwark Innovate](https://www.southwark.gov.uk/innovate/collabrative-project/planning-back-office).

Feedback on the prototypes, gathered through user testing with planning officers, has primarily been positive to date:

* <i>“It’s designed the way we want it. We love it.”</i>
* <i>“I hope this \[goes] live tomorrow.”</i>
* <i>“It will just transform development in the UK, that’s all… It's a dream."</i>

This is a great indicator that BoPS is heading in the right direction. There are still many other complexities and considerations to take into account on a project with so many moving parts, which is a core focus when moving forward.

To conclude the phase, the team also held (and recorded) a final Show & Tell: 

<iframe src="https://player.vimeo.com/video/376310404" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

<br/>

The beta phase has recently been [awarded funding via the Local Digital Fund](https://www.gov.uk/government/news/councils-given-1-2-million-for-innovative-digital-projects), alongside five other collaborative projects, meaning that BoPS is able to continue progressing into the next phase.

Southwark Council, project partners, MHCLG and Unboxed have just kicked off the beta phase of this back-office planning system project (project phase name: ‘Beta BoPS’) to design and develop the ‘Assessment and recommendation’ element of the service.

Throughout this next project phase, the team will also be working closely with Open Systems Lab, who are focusing on an applicant-facing system through their work with [Plan✕](https://beta.planx.uk/southwark) and [RIPA](https://www.ripa.digital/) (Reducing Invalid Planning Applications).

Keep up-to-date with [project progress via Medium](https://medium.com/ubxd), in which the team will be sharing weeknotes, links and other project updates. Also, if you would like to have a conversation about the project to find out more, please get in touch: 

* <mailto:jack.ricketts@southwark.gov.uk>
* <mailto:graeme.mccubbin@unboxed.co>
