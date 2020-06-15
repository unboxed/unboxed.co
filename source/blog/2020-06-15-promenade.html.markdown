---
title: 'Promenade: Looking for help to test the MVP'
authors:
  - Martyn Evans
tags:
  - Agile
  - Design
  - Innovation
  - Lean
  - Rails
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/e24b4b1e19fe0670f82b7c563722d5ab.jpg
date: '2020-06-15T10:53:46+01:00'
published: true
---
![Promenade in use](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/e24b4b1e19fe0670f82b7c563722d5ab.jpg)

A couple of months ago, we kicked off an internal project within Unboxed to create an application that would allow patients to capture Patient Reported Outcome Measures (PROMs) and share them with their clinical team. You can read a little more about the rationale [here](https://unboxed.co/blog/using-patient-reported-outcome-measures-proms-to-keep-patients-safe/) and the team have been posting regular week-notes, the latest of which is [here](https://unboxed.co/blog/promenade-weeknotes-6/).

We've taken an iterative, agile approach as you might expect, starting with the simplest possible features that would deliver value to a patient and the clinical team. We're now close to having our MVP (minimal viable product) - something we feel could be used by a handful of patients and a doctor, to validate that the product is useful and worth further investment.

Gaining access to patients for testing has been rather difficult in the current climate but we've used what we learnt through our ongoing work with Guy's and St. Thomas' in this area and we owe a big thanks to [Melanie Martin](https://twitter.com/melrheum) for her input - here's a [recent talk by Mel and I on GSTT Remote Monitoring](https://vimeo.com/421105181). We'd love to find another organisation that would be able to support a small patient trial so please do get in touch if you are interested.

We started with the PSAID PROM for patients with Psoriatic Arthritis and have added the PHQ-9 which is used to assess and monitor symptoms of depression. The application architecture has been designed to make the addition of new PROMs fairly simple and we're currently testing this further by adding the BASDAI PROM for patients with Ankylosing Spondylitis.

![Promenade - submitting a PROM](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/01b18f738f8b2c76091330f533121d72.png)

We decided to use the [NHS Design System](https://service-manual.nhs.uk/design-system) for our MVP. It seemed logical given the potential for this to be integrated into other NHS services, but the application is adaptable and could easily be modified to work in private healthcare if necessary.

As it currently stands, patients who are added to the system, can sign-in and complete their own PROMs at any time, and see a historical record of their past PROMs. They can also choose to share the information with a clinician, or keep it private for their own use only. If they register for notifications, they can receive email reminders every 1, 2, or 4 weeks, and use a one-click link to create a new PROM without having to sign-in. They can also add their own free-text comment to a PROM to give it some context for themselves or for the clinician.

![Promenade screenshots, using NHS Design System](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/483c1887daf1caf13f2fa5233d1ec006.jpg)

_Promenade screenshots, using NHS Design System_
It's a basic set of features but we're keen to test them at this stage, to understand where we could best add more functionality to make it more useful to patients. We know that clinicians find PROMs useful but we need to learn how they might be given more meaning for patients. We believe this is essential to motivate regular usage and to help patients feel in control of their health.

Please contact martyn.evans@unboxed.co if you'd like to know more or would be prepared to run a test in your organisation.
