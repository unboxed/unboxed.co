---
title: Why buildings need passports
authors:
  - Rhian Lewis
tags:
  - Innovation
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/803bd14d90fc5b3a5a66baec468a2706.jpg
date: '2021-06-10T14:53:54+01:00'
published: true
---
We spend most of our time inside buildings. Even in more normal times, before the pandemic meant many people were working from home, office workers spent their time travelling from one building to another. 

In the UK, we have planning laws and building control regulations that run to hundreds of thousands of lines of legislation, drawn up and patchworked over decades and even centuries. Yet we still know surprisingly little about the built environment and the constructions inside which we spend most of our time.

This costs money, time, heartbreak and disruption to people’s lives and - in extreme cases such as the Grenfell Tower tragedy - can even kill. Even when the consequences are not life-threatening, they can be draining and energy-sapping: anyone who has tried to buy a house or a flat and ended up in a chain, while multiple people in multiple solicitors’ offices ask each other to search for pieces of paper in random council filing systems or request receipts from building companies that have been liquidated can attest to this. Families end up moving into rented accommodation, putting jobs and lives on hold, missing deadlines for children to get into their preferred schools. 

Leaving aside the impact on individuals, the lack of joined-up data can stifle innovation and cause log-jams in urban improvements. Smart cities are a strategic ambition for most governments around the world. Autonomous cars will need to know about the location of electric charging points, sensor-aided parking spots and traffic jams. The more real-time data that can be captured about a city and how people, vehicles, energy, water and waste flow around it, the more this can be used for modelling how future development should take place.

Yet the technological aspirations of the smart city movement seem impossible when we lack even the most basic data about the buildings we inhabit. The trauma suffered by the victims and survivors of the Grenfell Tower fire is unthinkable. Yet last month a potentially lethal fire broke out in New Providence Wharf, a residential block fitted with similar aluminium composite cladding. Fortunately there were no deaths or serious injury, but the revelation that the developers had been engaged in a long-running battle with residents over remediation costs highlights the danger that slow action because of imperfect record-keeping and inconsistent data can bring. 

It is not enough to state that data should be ‘better’ or more readily available without first specifying the current state of affairs. Next, we should look at the potential problems caused by this lack of consistent data, and finally imagine the possibilities of a world in which there is perfect knowledge. 

## Data interoperability is a mess

There is a tendency for some politicians - not all - to speak loftily of a high-tech future of smart cities and open data leading to life improvements for ordinary people without taking into account the considerable challenge and costs of converting into an interoperable format millions of disparate pieces of data scattered between:

* Spreadsheets in local authority and central government offices
* Proprietary computer systems with outdated file structures, and who have a vested commercial interest in not sharing data
* Paper deeds and pre-digital legal paperwork in cupboards and even shoeboxes

Before we consider data that relates to specific buildings, we need to think about its location, and all the constraints, datapoints and additional information that influence its construction and use. For this, we use Geospatial Information Systems (GIS). GIS maps show not just the location of an address but factors such as national and local boundaries; rivers and flood zones; protected trees; conservation areas; contaminated sites; topography; road use; and many other features. Any data relating to a building needs to show GIS information: for example, at the very least, to help a potential resident or purchaser understand whether the property is below sea level and at risk of flooding, or subject to heritage restrictions that may limit any work on the property.

In a perfect world, all this knowledge would be freely available, at the fingertips of consumers and developers. However, current GIS data in the UK is handled by a patchwork of different local authorities and public and private providers, under different licensing agreements, which can make interfacing with this information at a national level extremely difficult.

For example, we discovered, while working on the [Back-office Planning System](https://bops.digital) developed for Southwark and other local authority partners, that integrating with GIS APIs would have to be done on a per-council basis, as there is no unified API providing all the required data, and no nationally agreed output standard or format for this invaluable information. 

As long as fifteen years ago, the Government made the following points about GIS in their Cabinet Office Guide to GIS Applications in Integrated Emergency Management - and depressingly, every single one of these insights still holds true:

“The following kinds of problems are commonly observed in a GI/S context, and all of them are symptomatic of a lack of interoperability: 

* An inability to deliver data between internal departments’ and external agencies’ systems without a high level of user intervention in converting; 
* The absence of a common language to talk about spatial data and the attributes of spatial data; 
* An inability to integrate data from real-time sensors or allied databases over a network. 

These may be problems with a strongly technical flavour, but their operational consequences may be profound.”

That last sentence is particularly important. Talking about technical impediments to grand visions might be tedious, but achieving data interoperability does not happen by waving a magic wand, and will require much co-ordination and expense.

Similarly, while planning data (ongoing applications and their decision notices) are made available by local authorities, this is not done in a uniform manner, and the mix of proprietary systems and different data approaches at a council level makes it difficult - if not impossible - to access the necessary information with a one-stop technical solution. 

While the public API provided by the Back-office Planning System will output data structured and formatted according to modern unified standards, it would require a rollout across multiple councils in order to be able to aggregate planning data in this unified manner, but BoPS plays an important part in providing a vision for the future.

## Paper to digital

It is easy to talk about the ideal world of readily available geographic, planning and building data as though it is simply a matter of writing some computer scripts and applying them to existing databases in such a way that uniformity can be magically applied.

Unfortunately - particularly in terms of historic or recent information - much of this information is not even digitised, and languishes in filing cabinets or envelopes. Anyone who has bought a house that was constructed before the turn of the last century will be familiar with the dog-eared paper deeds, covenants, legal papers and other artefacts needed by conveyancing solicitors.

Even the move towards digital in many local authority planning and building control teams did not necessarily solve this. A planning decision notice or a building safety certificate in its digital form is barely any more than a paper certificate on a computer screen. Replacing a paper certificate with a PDF may mean that the paperwork can be retrieved more quickly, but it does not make the information within it searchable or usable in other contexts.

The blog post by Euan Mills at MHCLG [explains](https://mhclgdigital.blog.gov.uk/2020/05/28/start-treating-planning-applications-as-data-rather-than-documents/) why “treating planning applications as data, not documents” is so important.

We can take the “data, not documents” idea a stage further and start thinking about “certification, not certificates.” A certificate promotes the idea of a piece of paper that is signed off at a static moment in time. This signature (which may or may not be digital) at a particular waypoint may still be valid, but more appropriate to the 21st century is the idea of certification as a constant flow of information, whose constituent parts may be useful in different contexts. Perhaps it is useful to frame it, as Jack Ricketts, points out, in terms of Kevin Kelly’s 12 Technological Forces, which includes ideas of flowing and sharing data.

Of course, in addition to the geographical space occupied by a building and whether its size and use is appropriate to its location, information about its materials and methods of construction are vitally important. As we saw with the tragic events at Grenfell Tower, developers and builders should be held accountable for their decisions and work - as planning specialist Jack Ricketts puts it, “[Excel kills](https://jackricketts8.medium.com/building-safety-excel-kills-d7baffa75453)”.

So why have we been historically so bad at acquiring this information and acting on it? It becomes clear that it is not enough to approach building owners retrospectively and ask them questions about the past, where it is easy for people to obfuscate, claim imperfect memory or legitimately not know.

In an ideal world, we would collate and record this information right from the inception of a building, maintaining a ‘golden thread’ that can be supplemented with further record-keeping throughout its lifecycle.

## The ‘golden thread’

For a recent article in [The Planner](https://www.theplanner.co.uk/features/tech-landscape-data-unchained), co-written with Kassie Paschke, I spoke to Dr Eleni Papadonikolaki, Associate Professor in Digital Innovation and Management in the Bartlett School of Construction and Project Management at University College London (UCL) and Partner at Digital Outlook, who spoke of current challenges in the building sector: “The construction industry is very transaction heavy and it’s also a very fragmented industry...There are a number of different trades and professionals involved in the construction of a building project such as architects, engineers, structural engineers, fire experts and so forth. Each of these trades and professions is protected by a different professional institution and all of these different people have to sign off the project before construction can start.”

Jack Ricketts says: “Both the Hackitt Report and the subsequent draft Building Safety Bill recognise that the current system of monitoring and reporting is ineffective, so have stipulated that there must now be a digital, by default, standard of record keeping throughout the building lifecycle (including maintenance and repairs).”

From the Hackitt Report itself: “The review heard almost unanimous concern surrounding the ineffective operation of the current rules around the creation, maintenance and handover of building and fire safety information. Where building information is present, it is often incomplete or held in paper form and is not accessible to the people who need to see it.”

Ricketts continues: “It is important to note that this specifically prevents the future use of Excel spreadsheets and folders on internal servers.” and cites the Hackitt Report specification that:  "Digital records are to be in a format which is appropriately open and non-proprietary with proportionate security controls." 

This is reinforced by the provisions in the Bill for there to be a 'golden thread' of information running through this digital record. It is the intention that this will "ensure that the right people have the right information at the right time." 

He also highlights the Building Safety Bill: "This information will be held digitally and will ensure that the original design intent and any subsequent changes to the building are captured, preserved and used to support safety improvements” 

To this end, and as described in the previously referenced [Excel Kills](https://jackricketts8.medium.com/building-safety-excel-kills-d7baffa75453) post, he has been working with Unboxed to create a building safety platform for Southwark, whose progress is documented [here](https://jackricketts8.medium.com/building-safety-so-we-had-a-go-45c99a2078da).

Can distributed ledgers play a part? Many people think so. [Automated Markets](https://www.automatedmarkets.com/) offer blockchain solutions within the property sector. As they state, “Using a blockchain-enabled solution, building safety records would be tamper-proof and signed by the organisations involved, creating the foundations for transparency in building safety. Building safety authorities would have more timely access to digital safety records enabling effective oversight”

Such initiatives are not necessarily limited to building safety: their exploratory work with Willmott Dixon aimed to drive cross-industry initiative to find viable, practical uses of blockchain technology in the UK construction sector. You can read more about it here.

## The building passport

Although the golden thread that runs through the lifecycle of a building is linear, from the original planning application through its construction, its subsequent sales, rental agreements, repairs and maintenance through to its demolition, the type of information that needs to be captured and accessed is not linear.

Jack Ricketts breaks this down into the following categories, which is more like a Venn diagram than a linear sequence.:

* Ownership and registration
* Policy, legislation and rules
* Design, architecture and engineering
* Approval, certification and licensing
* Manufacture/Construction, logistics and supply chains
* Asset management, maintenance, monitoring
* Wellbeing, environmental sustainability, social impact
* Smart buildings and safety
* Demolition

Different third parties will need to access some of this information at different times, with a need for some information from multiple categories.

For example, at the point of exchanging a contract to buy a property, the prospective purchaser would potentially need:

* Ownership proof (via the Land Registry)
* Proof of adherence to planning rules
* Knowledge about building materials and their safety
* Certificates from building control proving that maintenance or improvements had been carried out in accordance with regulations
* EPCs and history of energy use
* Affordable housing status
* Information about other legal restrictions on title transfer

In 2007, the UK government put in place the requirement for a Home Information Pack at the time of a property’s sale. This was a move in the right direction - except that with its emphasis on time-consuming and expensive data gathering and certification, it became an unwieldy burden for sellers and instead of reducing friction in the housing market, actually increased it.

This is a classic case of a good idea whose implementation was derailed by a lack of joined-up data. HIPs were scrapped in 2010, and it is clear that any successor, in the form of a building passport, would need to be powered by open data rather than by a requirement for individuals to gather information manually.

## Where else might this data be useful, other than the point of sale?

An insurer might need a subset of this information, particularly related to building control and materials, together with other local information such as GIS data on flooding and tree protection. This would reduce the number of claims that are refused not because the claimant is trying to game the system but because they may in good faith have provided inaccurate information about subsidence, trees or previous flooding when they bought the policy. In other words, it’s about people having the confidence in knowing that what they’re seeing is exactly what everyone else is seeing.

Additionally, organisations that manage properties for the benefit of the tenants - local authority maintenance teams or housing associations - would have data at their fingertips that would allow them to schedule preventive maintenance and checkups rather than waiting for properties to degrade over time.

Having access to APIs that provide detailed information about a building’s construction, ownership and use throughout its lifecycle also allows for third-parties to build useful apps and dashboards that can save residents - whether they are homeowners or private or social tenants - time and money. 

A good example of this is the discovery and alpha work that Jack Ricketts has done at Southwark, to ensure that once given planning permission, affordable homes remain affordable, and remain available to those who need them. 

Nigel Walley, managing director of Chimni, who provide logbooks for your home, uses the example of measuring up for a new carpet. If the exact measurements of all your rooms are already on record, you don’t have to scramble around for a tape measure, and flooring showrooms would be able to use this information to provide an accurate quote. 

## Aggregating data from building passports

The idea of the building passport is important not only in isolation, with reference to a particular address. For budgeting and planning purposes, local authorities and central government need to have access to collective information about the built environment, whether this is to track their legal commitments for providing affordable housing, calculating the area of land that is under threat from flooding, or which is brownfield land, or creating and maintaining records of multi-storey buildings that need to be inspected for dangerous cladding post-Grenfell.

With reference to brownfield land sites, Jack Ricketts suggests that projects such as Digital Land could be built on to provide a pre-planning passbook for such sites. 

We cannot underestimate the social value of having properly structured, publicly accessible building data available in order to validate construction standards, help organisations manage their housing stock and help local authorities develop their strategic plans, as well as helping owners and tenants to build a digital model of the property they live in.

As well as the more pressing concerns of social value and safety, the commercial potential of this data is vast, and would allow massive innovation in allowing established companies, startups and even individual developers to build applications with a variety of different uses, saving time and money, reducing friction and, above all, enabling us all to feel safe and happy inside the buildings we inhabit.

# Sources

<https://medium.com/ubxd/is-now-the-time-to-build-a-national-planning-register-d95a869439f4>

[https://www.techuk.org/resource/open-finance-why-it-is-so-important-particularly-in-relation-to-geospatial-and-urban-planning-data.html ](https://www.techuk.org/resource/open-finance-why-it-is-so-important-particularly-in-relation-to-geospatial-and-urban-planning-data.html)

[https://cp.catapult.org.uk/news/smart-cities-the-future-of-urban-living/ ](https://cp.catapult.org.uk/news/smart-cities-the-future-of-urban-living/)

<https://bops.digital>

# Further reading

Designing Buildings Wiki​ - ​Property Logbooks description <https://www.designingbuildings.co.uk/wiki/Property_Logbooks>

The MHCLG Property Logbook Workgroup​ - ​Workgroup Website

<https://homebuyingandsellinggroup.co.uk/property-logbooks-workgroup/>

The Residential Logbook Association (RLBA)​ - ​[www.rlba.org.uk](www.rlba.org.uk)

The EU Digital Building Logbook (DBL) ​Project​ - ​Report

<https://op.europa.eu/en/publication-detail/-/publication/9756617c-40de-11eb-b27b-01aa75ed71a1/language-en/format-PDF/source-search>

News Report on the E​U​ DBL Project​ - ​News coverage

<https://www.bpie.eu/news/new-report-from-european-commission-provides-first-ever-common-definition-of-a-european-digital-building-logbook/>

The Global Alliance for Building & Construction - Building Passport Project -​ ​Project Webpage

<https://globalabc.org/our-work/work-areas>

**Thank you to Jack Ricketts at Southwark Council and Nigel Walley at Chimni for assistance with this post, including the list for further reading**

**Photo by Toa Heftiba on Unsplash**
