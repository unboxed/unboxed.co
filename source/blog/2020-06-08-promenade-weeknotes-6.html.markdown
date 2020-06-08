---
title: 'Promenade: Weeknotes #6'
authors:
  - Celia Collins
tags:
  - Agile
  - Design
  - Innovation
  - Lean
  - Rails
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/24b408be5317f54dd7a1d7ff6e9241c1.png
date: '2020-06-08T10:26:58+01:00'
published: true
---
*We’re working on an internal project named ‘Promenade’ — a digital application for non-urgent patients to remotely track their conditions, such as arthritis, away from hospital. Find out more about the project [_here_](https://unboxed.co/blog/using-patient-reported-outcome-measures-proms-to-keep-patients-safe/).*

This week, we’ve started adding more complex functionality to Promenade. This is great both for the application, and for the team. We can see the new joiners getting more and more confident and capable in their coding abilities and the application growing at a faster pace. 

**Last week**

* We added pages to show users the individual scores behind PROMs that had been submitted. 
* We did some general tidying up of layout and checking that there was consistency throughout the app. 
* We had a really great internal Show and Tell, which received lots of positive feedback. I particularly enjoy our Show and Tells because the new joiners always take some time to explain what they’ve learned that sprint, and it’s great to see them progress. 

**This week**

* We’ve begun work on adding multiple PROMs to the system, starting with the PHQ-9 which monitors mood and depression. As I said last week, this is particularly exciting as it’s one of the main focuses of the project. 
* We finished a story that allows users to decide how frequently they want to be reminded to fill in a PROM. Users can ask to be reminded by email every one, two, or four weeks.
* After putting it off for a while and doing it our own way, we’ve finally decided to implement the [Pundit gem](https://github.com/varvet/pundit) to help us with authorisation.  
* We had a really helpful discussion with a rheumatology professional about the current app, the purpose of PROMs and how patients tend to use them.

**What we're thinking about**

* We’re trying to digest all the information we got from our discussion with the person in rheumatology. We need to think about how it might impact the design of the app as well as the direction it takes in the future.
