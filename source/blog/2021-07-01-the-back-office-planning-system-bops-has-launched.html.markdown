---
title: The Back-office Planning System (BoPS) has launched
authors:
  - Rhian Lewis
tags:
  - Agile
  - Culture
  - Design
  - Events
  - Innovation
  - Lean
  - Rails
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/d2b2a1f367458ec51f8c8c60beb73a77.png
date: '2021-07-01T12:36:56+01:00'
published: true
---
There was one piece of news this week that made all of us at Unboxed very happy: the [announcement](https://www.gov.uk/government/news/new-apps-to-simplify-extension-application-process-for-homeowners) by the Ministry of Housing, Communities and Local Government \[MHCLG] that the Back-office Planning System \[BoPS] we have been working on with Southwark Council and other partner local authorities had gone live.



It is always rewarding to know that the products and services we design can truly help make people’s lives better, and with that in mind, we have been working closely with planning officers throughout the different phases of the project, from discovery to private beta, to ensure that we fully understand the time-consuming parts of their job and the specific pain points they encounter, so that we can automate as much of the process as possible and allow them to concentrate on the thing they do best: making informed decisions.



As the MHCLG announcement makes clear when speaking about BoPS and the public-facing Reducing Invalid Planning Applications service \[RIPA], which went live at the same time: “They are a first step towards the aim, outlined in last year’s ‘[Planning for the future](https://www.gov.uk/government/consultations/planning-for-the-future)’ white paper, of replacing the current outdated, paper-based system with one that is digital from start to finish – doing away with hundred-page PDFs and inaccessible information, and putting data and decision-making in the palm of your hand.”

![Tweet from MHCLG announcing BoPS launch](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/55f2459ac0fb5459aaa62b198cc250e1.png)



## Structured, transparent data

As well as transforming and streamlining processes for local authorities’ planning departments, another key part of the Back-office Planning System is the public API we have built to allow members of the public open access to information about planning applications while they are being assessed and determined.



We recognise that local authorities make this information available, but the quality and transparency of the data can vary from council to council, depending on the particular software they use. The unpredictable nature of this information makes it difficult to aggregate it at a national level so that it can be used for decision-making, and we are hoping that the logical structure and the “public by default” approach will help set a standard for planning data APIs and the information they are expected to return.



The benefits of digitising and structuring data, rather than simply replacing pieces of paper with ‘digital pieces of paper’ (PDFs) from which information cannot be extracted cannot be overstated.



Naturally, there is some information that will remain private, and within the web application, we have created an easy system for planners to select which documents they will make public.



## Benefits for homeowners and communities

While BoPS will be used by planning officials, homeowners or architects will also benefit from the improved efficiencies that the system will provide. For example, notifications such as acknowledging the receipt of an application, requesting more information or determining an application are built into the system itself so that planning officers do not need to leave the application to send emails. The integration with GovUK’s Notify service means that there is an instant audit item logged within BoPS for each notification that is sent, rather than having to deal with separate email trails.



Meanwhile, the planning data API will enable any interested member of the public to see in an accessible and obvious way exactly which works have been applied for and what their status is. 



## Scalable, reliable infrastructure

As an Amazon Web Services Partner, we have used AWS for the hosting platform for BoPS to ensure that we have a resilient and secure solution that can be scaled up as more local authorities begin to use it.  



For more information, read the official announcement or visit <https://bops.digital>
