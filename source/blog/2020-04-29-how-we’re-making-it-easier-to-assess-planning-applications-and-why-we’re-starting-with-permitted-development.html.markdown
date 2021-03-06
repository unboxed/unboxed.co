---
title: >-
  How we’re making it easier to assess planning applications and why we’re
  starting with permitted development
authors:
  - Michelle Isme
  - Jack Ricketts
tags:
  - Agile
  - Design
  - Innovation
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/2e04558068b928c8f25a6bbd17d1e181.jpeg
date: '2020-04-29T14:31:13+01:00'
published: true
---
When it comes to the UK planning system there are many problems to solve.

It’s fair to say that very few people, possibly nobody, enjoys applying for planning permission. Navigating a myriad of guidance to determine whether or not you need to apply in the first place, pulling together everything that’s needed to submit an application, and then completing the application itself, are not fun tasks.

The process is confusing, labour intensive and frustrating which is why many applications arrive invalid. However, there are other projects that are looking to improve the process for applicants.

We’re interested in what happens next.

Specifically, how we can build a back-office planning system that makes it as easy as possible for planning teams to assess applications.

<br/>

# The problems to solve…

Our [recent blog post](https://unboxed.co/blog/the-future-planning-system-for-local-authorities/) detailed the problems we’re looking to solve — with Southwark Council, MHCLG, and partners — but here’s a quick re-cap of some of the biggest challenges planning teams face with existing processes and systems:

* <b>They are hard to use</b> — they’re inaccessible, poorly designed and disjointed, which makes it difficult for planners to easily find the information they need to assess applications. In addition, many existing systems have not been designed for use on tablets or mobiles, so the notes and photographs planners make whilst on site visits have to be emailed and uploaded to the back-office system later.
* <b>They rely on manual workarounds</b> — planning officers have to copy and paste the address that the application refers to into external systems to view maps and identify local constraints. Email integration is often poor or non-existent which makes it harder to record the interactions between planning teams, applicants and their agents.
* <b>They lock in data</b> — information generated by the planning officer during the assessment process is created and stored inside documents e.g launching a Word document that the planner has to fill in. This results in a lack of structured data that makes it harder, for instance, to automatically push out more frequent updates to applicants. It also makes it harder to export data for strategic reporting purposes.
* <b>They block innovation</b> — many legacy systems do not allow for integration with other tools that will aid planning teams.

<br/>

# Why we’re focussing on householder applications

Householder applications consume about 50% of officers’ time so our initial focus is to build a better system for assessing applications from residents e.g a roof extension to a house.

![Planners’ work list](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/e03e77849edd9bc4d21b7070ed0c6ea2.jpeg)

<i>Planners’ work list — one of the screens that our designer, Claudia Hopkins, has been prototyping and testing with planning teams.</i>

However, even within that narrowed scope there are a few different types of householder application, such as:

* <b>Certificates of lawfulness (CoL) for permitted development (PD)</b>  —  national legislation allows homeowners to make some simple alterations to their property without having to apply for full planning permission. This is known as ‘permitted development’ and residents can apply for a ‘certificate of lawfulness’ to prove that the alterations they have made, or propose to make in the future, are inline with national legislation. A resident may apply for a certificate of lawfulness in order to show potential buyers, when they’re selling their home.
* <b>Prior approvals</b> — this is still for permitted development but is for certain types of alterations to larger properties, and therefore requires a little more scrutiny and a degree of consultation.
* <b>Full planning permission</b> — for applicants who are proposing to make alterations that are not covered under permitted development legislation. This may be because, for instance, the applicant wants to significantly extend their property, or permitted development rights have been removed on that property.

Each of these types of application have different assessment needs.

When a planning officer is assessing an application for a certificate of lawfulness, they are ultimately checking that what the applicant is proposing to do meets the conditions set out in the [General Permitted Development Order](http://www.legislation.gov.uk/uksi/2018/343/made).

It’s a technical assessment, of a binary nature.

The same applies to prior approvals but there is an additional requirement to consult with neighbours.

If no valid objections are received during consultation and the proposal meets the requirements for permitted development, it will be considered to have prior approval and the applicant will be granted a certificate of lawfulness. If valid objections are received the applicant has the option to either make changes to their proposal or apply for full planning permission.

With applications for full planning permission an officer is not only checking proposed plans against a raft of planning policy, they are also taking into consideration the impact on neighbours and how the alterations may affect local design and heritage.

To do this they often make a site visit and consult with neighbours as well as any relevant statutory bodies such as the highways authority.

<br/>

# Getting started with Permitted Development

In one sense, Permitted Development (applications for certificates of lawfulness) are already very much the MVP of householder applications because:

* It’s a technical assessment
* It’s based around national legislation
* It doesn’t require consultation or site visits

Kicking off our beta project by focussing on permitted development will also ensure we can deliver a standalone service quickly and start adding value to users sooner.

![Sketch](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/20bc7af6b588efc7e6bbacc575d43aa5.jpeg)

<i>Sketch from an early ‘ideation’ workshop with project partners.</i>

It also makes sense from a software development perspective as many of the elements of building a service for assessing PD applications can be reused, but added to, to assess more complex applications later, including:

* <b>Getting the right infrastructure in place</b> so we can ensure that our system doesn’t recreate the same problems that exist now, including making it easier to pull in and export relevant data.
* <b>Providing a way for users to log in</b> and access the functionality they need to do their jobs.
* <b>Displaying relevant planning policy and legislation</b> to guide planners in their assessments — this will be particularly helpful for junior planning officers.
* <b>Present a clear overview of an application</b> so planners can quickly understand what the applicant is proposing, including a way to easily view plans and drawings.
* <b>Making a recommendation</b> — enabling planning officers to make a recommendation and for planning managers to make a final determination.
* <b>Inform applicants of the decision.</b>

In addition the [RIPA project](https://www.ripa.digital/) (Reducing Invalid Planning Applications) — that is also being funded by MHCLG — is concentrating on PD first and we are keen to join forces and work together to tackle problems, in the spirit of [local digital collaboration](https://localdigital.gov.uk/about/).

<br/>

# Scaling up later…

Although, during the first half of the project, we will concentrate on developing a minimum viable product that allows planners to assess permitted development applications, we know there’s room to add a lot more value by tackling householder applications for full planning permission.

That’s why — half way in — we will take stock and, following discussion with our partners and stakeholders, likely pivot to scale what we’ve already built to incorporate the additional elements required to assess the other application types.

The research that our design team is doing now will also feed into the additional functionality that will be required later, such as how to handle consultation.

![User research](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/7fcfcea8e3673c094e4c2d4db2a33cc9.jpeg)

<i>User research we undertook earlier in the project (we’re now testing our new prototypes with users).</i>

So, that’s our current ‘plan’ but as with all agile projects, things may change as we learn more from user testing.

We’d love your feedback — please leave a comment or email us (info below).

We’re also looking at what data is available now so we can use it to benchmark against and measure how our system is adding value. For instance, the data councils submit to feed into national [planning application statistics](https://www.gov.uk/government/collections/planning-applications-statistics).

If anyone is aware of other data sources that it might be useful for us to have a look at, we’d love to hear from you!

Get in touch:

* <mailto:jack.ricketts@southwark.gov.uk>
* <mailto:michelle.isme@unboxed.co>
