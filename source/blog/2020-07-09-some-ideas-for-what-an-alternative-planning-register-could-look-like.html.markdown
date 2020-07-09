---
title: Some ideas for what a user centred planning register could look like...
authors:
  - Michelle Isme
tags:
  - Design
  - Innovation
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/7123e8ca187c674827a663a1ad1a8850.jpg
date: '2020-07-09T14:38:19+01:00'
published: true
---
Yesterday, I published a [blog post](https://unboxed.co/blog/is-now-the-time-to-build-a-national-planning-register/) that questioned whether now is the time to pull local planning register data together onto a national platform. I also shared some of the feedback we’d heard, from planning officers, about the problems with some legacy planning registers... So, today, I’m going to share some ideas for what an alternative planning register could look like.

The reason we’re thinking about this is because we are in the middle of building a new back office planning system ([BoPS](https://bops.digital/)), and will likely also need to develop some sort of planning register so that councils can fulfil their legislative duties, to publish planning applications and decisions… We also need to find a way for the main users of BoPS (planning officers) to obtain and review feedback from the public, something that is often done through the council’s planning register.

To tackle this we have several options:

* **Ask planning officers to upload applications to their existing registers** (where existing software allows this). However, this will provide an additional admin burden that is not present now because existing back office systems integrate with their own registers.
* **We can create a user-centred local planning register** for each council which just shows the planning applications in their authority (same as now but, ideally, underpinned with plenty of user research, particularly with members of the public)
* **We could also provide an api **for the above local register, so that data can be fed into a separate, national platform of planning data in the future.

# So, what could a planning register look like?

My colleague, [Boris Divjak](https://twitter.com/borisdivjak), and I recently took what Unboxed calls an “innovation day” where we’re able to spend some time learning or working on something that interests us. As we’ve both been involved throughout the BoPs project, we’ve both caught the planning bug and wanted to have a go at mocking up some ideas for an alternative planning register. 

You can see our ideas, below, but there’s a couple of caveats…

The biggie is that our prototypes are largely based around the needs of internal users (council planning teams) and hearing about some of the problems they face when assessing applications. However, lots of research and testing needs to be done with the users who need to look at planning registers and, in some cases, provide feedback on applications - namely the public.

We’ve also considered some of the potential opportunities a national register could provide, with an eye on the [research conducted by MySociety and MHCLG](https://digital-land.github.io/project/single-register-of-planning/discovery/) and the thought provoking articles ([here's one of many](https://futurecities.catapult.org.uk/2019/05/10/building-a-21st-century-digital-planning-system-a-quick-start-guide/)) published by Future Cities Catapult.

However, we’re bound to have made a few assumptions, too, that would need to be validated (or not).

Lastly, our prototypes are based on householder planning applications (i.e adding an extension to an existing house rather than developing a whole new building) because this is what our BoPS project is focussing on, but we think there’s potential to include other types of developments in the future.

Caveats out of the way.. [Check out the prototype here.](https://www.figma.com/proto/8G5PxbJUUEUg8S0VPwAKA9/Planning-register?node-id=1065%3A2&scaling=scale-down) 

## Planning register homepage:

A clean, simple homepage to make it easy to search planning applications. This could also provide a starting point to share high level stats.

![Screenshot from prototype showing a search page to search planning applications in the UK](/assets/images/uploads/transp-uk-register-searchpage.png)

**Research required:**

* How do different types of users need to search a planning register?
* What data points are useful to share?
* Should we provide stats on the planning register or would this be better surfaced in a separate standalone service, perhaps pulling data from the planning register?

## Search results page:

A page displaying a list of planning applications, highlighting key information such as the application type and its status. Over time the register could also group together multiple applications that relate to the same site.

## 

![Screenshot of the search results page in our prototype, which includes options to filter results. It also groups together applications that relate to the same property](/assets/images/uploads/transp-search-results.png)

Research required:

* How do users need to be able to filter results?
* What key information should be presented on this page?

Known challenges:

* It will not be possible to display existing, historical applications unless data can be extracted from the various back office planning systems and registers that councils currently use. What incentive or change in legislation might be required to make this happen?

## Application page:

[Planning legislation](http://www.legislation.gov.uk/uksi/2010/2184/article/36/made) states that local planning authorities must publish applications with any accompanying plans and drawings, the reference number, decision and the date of the decision. We took these requirements as a starting point but have also thought about the kind of information that might be useful for someone who wants to find out about and understand a proposal. 

Currently, application documents are published on registers as downloadable PDF forms but if data is supplied in a structured format, to systems like BoPS, it can be displayed directly on the application page. We have also experimented with how different steps of the assessment process could be displayed to enable users to quickly grasp at what stage an application is at. This could, potentially, also be useful for applicants when they want to check on the progress of their application.

## 

![Screenshot of prototype showing a web page with information about a planning application including details about the proposal, the address, a map, the drawing that the applicant submitted with their application, and the status of the application.](/assets/images/uploads/transp-application-page.png)

Note: The image shows a prototype page for an application for householder planning permission. You can also see a prototype for a simpler application, for a certificate for [lawfulful development](https://www.figma.com/proto/8G5PxbJUUEUg8S0VPwAKA9/Planning-register?node-id=1065%3A91&scaling=scale-down).

Research required:

* What’s the most important information to different types of users?
* Content - can people who have had little or no prior exposure to the planning process understand what the application is for? Is this the best format and order to display information about the application?
* Should the planning register be used to update applicants on the status of their application or would this need be better served through automatic updates emailed from the back office planning system, or by the applicant logging in to the system they used to apply in the first place?
* Some developments will have a lot of plans and documents - what’s the best way to display these to users?

Known challenges:

* At the moment plans and drawings, for householder development, are generally provided in PDF format which may not be very accessible and could also create challenges when trying to open and view them. However, there is also potential to scale up functionality in future, potentially taking advantage of other “Plan Tech” products on the market such as [VU.City’s](https://vu.city/) 3D maps.
* Maps! There are whole blog posts just about this but, in a nutshell, there might be problems with licensing that mean displaying a map on a page, with the site boundary around a property, could be a lot trickier than it looks. The team behind the [RIPA projec](https://www.ripa.digital/)t have recently started to delve into some of this so I'll direct you to [their blog post](https://medium.com/@digitalplanning/maps-4e4a68458176)...
* To present applications in this way also requires data, generated by applicants when they first apply and by the back office systems used to assess them, to be provided in a structured format. 

# What about consultation…?

It’s tricky to know where to start on this.

We’re aware of some problems (discussed in [yesterday's blog post](https://unboxed.co/blog/is-now-the-time-to-build-a-national-planning-register/)) based on what planning officers have told us but we’ve only really got one side of the story so, again, we’d really love to do some user research with:

* Members of the public who need to be able to comment on local and neighbouring developments
* Community groups and organisations that comment on particular types of development e.g developments in their area.
* Statutory consultees that are regularly asked to comment on developments, based on their expertise. This could be the authority’s own design or transport teams but it might also include regional or national organisations such as Transport for London or the Environment Agency. You can see a [list of national consultees here](https://www.gov.uk/guidance/consultation-and-pre-decision-matters#Statutory-consultees-on-applications).

The [Submit My Planning Application](https://blogs.hackney.gov.uk/hackit/hackneys-drive-for-a-digital-submit-my-planning-application-service-2) project, led by Snook and Hackney council, did plenty of user research with the public but their main focus was on applicants. However, we did find a quote from a member of the public that had provided consultation feedback on planning applications:

“You don’t get much info on why your objection isn’t valid. The letter does not address specific comments you might have submitted. It’s very generic.”

We’d like to explore this further with more research.

We have also had a quick look at some of the [legislative requirements for planning consultation](https://www.gov.uk/guidance/consultation-and-pre-decision-matters). However, there are still gaps in our knowledge and we’d like to find out:

* **Are councils required to make all consultation feedback public?** - does statutory and public consultation feedback have to be published? And, if so, how long does it need to be available for and what are the GDPR implications?
* **Does the council have to respond to consultees?** Do they need to respond to all of them or just those that object? And, again, do the responses also have to be publicly available?
* **Does consultation have to take place on the register?** We don’t think it does (see below) but it’s not 100% clear. Most registers do provide a very basic feedback form but is this largely based on convenience, as the application and drawings are already on the register?

We also considered what we have learnt from our BoPS user research with planning officers, who need to review consultation feedback. From this point of view it would be helpful if:

* **consultation feedback is easy for planning officers to find** and refer to during their assessments
* **planning officers can see high-level stats about consultation**, such as the number of comments received and how many of these comments are objections - this helps officers to estimate how much time may be required to complete their assessments.
* **feedback can be filtered by objections, neutral and supportive comments** i.e so planning officers can prioritise reviewing objections
* **feedback can be filtered based on the type of user that has provided it** - different types of feedback is useful during different points of a planner’s assessment e.g it is helpful to refer to any objections from neighbours when assessing the impact the proposal will have on neighbouring properties.
* **public feedback is structured around planning policy** - we’ve heard that some of the feedback provided by public consultees isn’t always a material consideration under planning policy… **would it be helpful to guide public consultees** by asking them to provide feedback on specific things?

With some of these things in mind we started [prototyping a structured form](https://www.figma.com/proto/8G5PxbJUUEUg8S0VPwAKA9/Planning-register?node-id=1019%3A217&scaling=scale-down) for gathering consultation feedback. Our prototype for this is incomplete as more time needs to be spent on researching what kind of guidance, if any, public consultees need. 

Here are some screenshots:

![Screenshot from prototype showing the first step on a consultation feedback form, asking users to choose the capacity in which they are commenting. They can choose one of three options: a neighbour or local resident, a community group or organisation, other.](/assets/images/uploads/transp-consultation1.png)

![Screenshot from prototype showing the second step on a consultation feedback form, asking users whether they are objecting, supporting or neutral about the proposal. The second question asks whether the proposal will have a negative affect on the user's own property.](/assets/images/uploads/transp-consultation2.png)

This is one approach but we know that other platforms exist, or are being developed, that might be better placed to facilitate consultation - such as [Commonplace](https://www.commonplace.is/) or [Civic Voice](http://www.civicvoice.org.uk/) (who, by the way, we presented alongside at a [Connected Places webinar](https://youtu.be/1XqjGpMcoWU) earlier this year).

Although planning legislation is clear on the need to consult for different types of applications it also states that: 

“Local planning authorities have discretion about how they inform communities and other interested parties about planning applications.”

Further investigation is required but this might mean that consultation doesn’t need to take place on the planning register itself. However, any alternative options for facilitating planning consultation will ideally collect feedback in some of the ways mentioned above. 

# What’s next?

As I’m sure I’ve drummed on about enough, already, we really need to do more research and testing with users as well as exploring what technology is already available. 

And we created these prototypes largely to take what we’ve been learning, from planning officers, and turn it into something tangible that we could share and get feedback on. 

So, we would like to hear any thoughts you have on our prototypes (don’t worry, we expect them to be flawed and we’re not precious about them!) and any of the points raised in this or [yesterday's blog post](https://unboxed.co/blog/is-now-the-time-to-build-a-national-planning-register/).

Share your thoughts on twitter with [@icoo](https://twitter.com/icoo) or email michelle.isme@unboxed.co
