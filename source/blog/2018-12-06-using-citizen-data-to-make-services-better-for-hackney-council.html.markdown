---
title: Using citizen data to make services better for Hackney Council
authors:
  - Lawrence Richards
tags:
  - Agile
  - Design
  - Innovation
main_image: 'https://unboxed.co/assets/images/uploads/alignment-workshop-2x.jpg'
date: '2018-12-06T11:38:34+00:00'
published: true
---
# Project context: creating a single view of Hackney citizens

Having an up to date and accurate record of citizens is a valuable and increasingly necessary part of providing public services. By knowing a user at the point of contact, services are able to provide their services faster and save staff and users time. An example of this is verifying a user to prove eligibility immediately rather than requiring physical evidence of proof of identity in a face to face interaction. There are a huge number of potential use cases for having an accurate record of citizens, but multiple ways of achieving this result.

[Hackney Council](https://hackney.gov.uk/) currently utilises a [Master Data Management](https://en.wikipedia.org/wiki/Master_data_management) system to aggregate citizen data from multiple services, they call this the Citizen Index. It creates a [golden record](https://blogs.informatica.com/2015/05/08/golden-record/#fbid=_2sRJabV9fM) of a citizen made from various records collected from Hackney Council sources, for example; council tax, electoral register, libraries etc. 

![Hackney Council Citizen Index Show and Tell](/assets/images/uploads/citizen-index-show-and-tell-2x.jpg)

*A show and tell presentation at the Hackney Service Centre*

However there are a number of costs and pain points associated with running and maintaining a citizen index. Unboxed undertook a discovery phase to address 3 research questions; to identify areas where the current solution works well and where there are problems, evaluate alternate approaches, and uncover opportunities for future improvement. 

![Hackney Council Citizen Index Alignment Workshop](/assets/images/uploads/alignment-workshop-2x.jpg)

*Alignment workshop to understand the as-is system*

To understand how the system is working currently the team conducted a number of research activities such as shadowing staff, interviews, surveys and performance testing. 

The main insights from this were:

* **Speed:** users that had to use the citizen index found it slow, and occasionally prohibitive to their current workflow (if a result were required instantly).
* **Trust**: Inaccuracies in matching records, for example providing the wrong person when searching, would lead to a feeling that the system could not be trusted 100% and that for certain services an alternate approach must be used.
* **Maintenance:** keeping a large record of citizens is complicated, requires many integrations and often has to be manually improved, taking time. In addition to this there is the need to manage data sharing access across services from a data privacy perspective.

# A bloated system for maintaining the citizen index and checking citizen data

Our technical investigations sought to understand how the current data integrations worked and whether it was fit for purpose. Performance was checked across different services utilising Citizen Index data. It found the system had become bloated as more and more data sources had been added to the system. The results are a slow experience for services looking to do tasks such as verification of a user. Depending on the uniqueness of the search terms, a search could return a result of anything up to 3m, and this would likely get slower if more services are added to the system in the future. 

![Hackney Council Citizen Index Performance Testing](/assets/images/uploads/performance-testing-2x.jpg)

*Speed comparison of common and uncommon name searches*

# Reframing the citizen index around identified use cases rather than assumed uses

In depth interviews with service providers helped understand how they interact with the citizen index. The assumption from the outset was a number of potential uses were thought to exist, but by grouping them by similar requirements we could see that actually only 3 interactions were taking place.

The 3 identified use cases were:

* **Verification check:** for example checking for eligibility of a service based on address
* **Citizen look up:** for example service staff checking details about a citizen
* **Linking existing citizen record to new record:** for example to ensure only 1 record exists per citizen

![Hackney Council Citizen Index Co-design Workshops](/assets/images/uploads/concept-workshop-2x.jpg)

*Co-design workshop*

# A streamlined tool based on clearly identified needs

The proposed solution should move away from a large monolithic system to a simplified system. It is to be designed around the 3 clear use cases, and streamlined by providing only as much data is needed (rather than unnecessary data and historic). 

The solution should seek to reduce the amount of data sources to those that are highly valuable, well trusted and most comprehensive to reduce wait times for services using them. 

Having a simplified technical architecture will mean easier management of the services integrating with the Citizen Index, both from a data management perspective as well as for data privacy.
