---
title: 'Promenade - Weeknotes #5'
authors:
  - Celia Collins
tags:
  - Agile
  - Culture
  - Design
  - Innovation
  - Rails
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/673278ed3d52fc68845ae9d092a0f853.png
date: '2020-05-29T13:25:49+01:00'
published: true
---
*We’re working on an internal project named ‘Promenade’ — a digital application for non-urgent patients to remotely track their conditions, such as arthritis, away from hospital. Find out more about the project [here](https://unboxed.co/blog/using-patient-reported-outcome-measures-proms-to-keep-patients-safe/).*

Now that most of the basic functionality of the app is built for patients to complete a PROM form, it really feels like we’re on a roll. Fewer and fewer user stories have dependencies on one another, so it’s easier to get work done and move at a faster pace.  

**Last week**

* We finished implementing the new structure for how clinicians and patients see the information relevant to them. This involved adding two new controllers, and a whole load more tests. This was a chunk of work that had been taking us a while, so it was great to finish it off.
* We added labels to the possible answers in the PROM form, so that patients can see what the different numbers on the scale indicate. 
* We delved deeper into the NHS design system, looking at how they ensure responsive design. We then made sure our project followed these guidelines. 

**This week**

* We did some more work on the patient preference page. Patients can now decide if they want to be reminded to fill in PROMs, and if they want clinicians to be able to see their data. 
* Clinicians and patients can now see the individual scores for questions behind a submitted PROM, as well as the overall calculated score.
* We did some general tidying up - adding backlinks, ensuring spacing was consistent throughout the app, etc. 

**What we're thinking about**

* We’re getting into some really exciting new features now - adding other PROMs to the system so that patients can fill out different types. This is one of the main ideas we wanted to explore in this project, and so it’s great to be thinking about how we will actually implement it
* This new feature comes with a whole new set of design questions. How and when should the patient be asked which PROM they want to fill in? How will the different answer values be displayed? Can different PROMS be displayed on the same graph?
