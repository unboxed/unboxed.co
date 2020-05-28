---
title: 'Promenade: Weeknotes #3'
authors:
  - Florian Stagliano
tags:
  - Agile
  - Culture
  - Design
  - Innovation
  - Lean
  - Rails
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/30191076c0a921727bf63f919c342d39.png
date: '2020-05-11T14:06:31+01:00'
published: true
---
We’ve just finished the third week of our dive into an internal project named 'Promenade' — a digital application for non-urgent patients to remotely track their conditions, such as arthritis, away from hospital.

The current COVID-19 pandemic is seeing an increasing number of patient appointments being postponed and cancelled. As government guideline restrictions gradually lift, it’s expected that there will be impact on appointment delivery in the COVID-19 recovery phase. With a potential surge in appointment bookings, some patients may not be seen for some time. Remote monitoring is crucial for supporting patients.

A more in-depth introduction of the project can be found [here](https://unboxed.co/blog/using-patient-reported-outcome-measures-proms-to-keep-patients-safe/), and the last set of weeknotes [here](https://unboxed.co/blog/promenade-weeknotes-2/).

We continue our journey of working together as a team, while manoeuvring the current landscape of fully remote project work.

**Last week**

We've  moved our "chunky" first user story into QA, which allows patients to fill in and submit a  Patient Reported Outcome Measures (PROM). We’re using the [NHS Design System](https://service-manual.nhs.uk/design-system) for the user interface to ensure that we’re creating a consistent and accessible experience for patients.

![PROM form interface](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/30191076c0a921727bf63f919c342d39.png)

Getting this initial user story into QA has laid the groundwork for a number of further user stories.

The main task has been setting up the basis for sending and scheduling emails, which will ultimately allow patients to schedule and receive email reminders for filling in their PROM questionnaires. For sending emails, we’re using [Action Mailer](https://guides.rubyonrails.org/action_mailer_basics.html) and [Heroku Send Grid](https://devcenter.heroku.com/articles/sendgrid). 

Setting this up from the ground proved to be a great learning experience. During the process, we’ve also learned how (and from which environment) NOT to test access to the chosen email cloud delivery server, to avoid getting our test account temporarily suspended due to "detected unusual activity". Oops.

Based on the experiences from last week, we have adapted our way of working by tackling "user stories" in smaller chunks and breaking them down even further. Before, we submitted code for review after finishing a "user story", which allowed for a "holistic" review of the feature. Now, we have decided to submit code and review it after reaching certain milestones within this story. This allows us to move more fluidly, reducing blockers and wait times for approval. But of course there is no free lunch, so "git rebase interactive" became our best friend in merging all elements together upon completion.

**What we're thinking about**

What have we learned from our experience with working all together on one user story? What worked well, what didn't, and how can we improve our setup to work more efficiently from here on?

How to find a balance between Zoom meetings, pair programming and independent work, while keeping the information flowing.

**This week**

* We plan to finish setting up emailing and scheduling for the application.
* Begin with a feature to allow patients to give clinicians the permission to review their PROM submissions.

If you'd like to follow progress on project Promenade, or even provide some input to the process, please get in touch for a conversation: martyn.evans@unboxed.co.
