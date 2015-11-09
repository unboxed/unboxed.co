---
date: "2015-08-04 15:30:00 UTC"
published: true
title: "What is the definition of ‘done’?"
author: "Richard Stobart"
main_image: "http://bit.ly/1KBkjxe"
tags:
  - Agile
---

If you’re breaking your project up into features, then make sure you define what <i>‘done’</i> means for a feature.<br/>

Consider <i>‘done’</i> in terms of:<br/>

* Functionally
* Operationally
* Being able to be tested automatically
* Automated deployments

Features need to include all the dependencies required to make that feature work. You might not <i>complete</i> the dependency, but you just need to deliver enough of it, or stub out the bits you don’t need, to deliver what the feature needs.<br/>

A feature needs to be deployable to production. If a feature is incomplete, and you don’t want to roll it out to your full customer base, then you need to include a feature switch. This switch makes it available to a certain sub-set of customers. Or only make the process available to a set of users that you choose. So you need to be able to put the feature in production.<br/>
<br/>

<h2>Product Owner involvement</h2>
Make sure that the Product Owner, the person responsible for driving value from a feature once it’s delivered, has accepted the feature in a User Acceptance Test (UAT). Or if you happen to be UAT-ing in production, then they must accept the feature in production, before it’s toggled as available.<br/>

<p align="center"><img src="http://bit.ly/1MvZEKp" alt="Product owner"></p>
<br>

<h2>Automated testing</h2>
Make sure these acceptance criteria have automated tests to confirm (later on as the feature advances and is changed) that you don’t break anything already being used in production. Your UAT criteria should also be automated.<br/>
<br/>

* If you are starting to build reasonable-sized products, the test data required to test a feature should be automatically created in the test database.
* Make sure your regression packs are updated with this feature, so you can make sure the scripts that test this don’t break something else
* Update your regression packs and run them in your test environment to ensure they pass
<br/>
<br/>

<h2>Non-functional testing</h2>
Make sure you have [zero-known defects](https://www.unboxedconsulting.com/blog/why-should-you-have-a-zero-defect-strategy) in this feature. But one thing that’s often controversial is non-functional testing:<br/>

* Volume testing
* Soak testing

It’s often difficult to do this in a development environment, frequently enough. There are many ways to implement non-functional testing. The simplest is to baseline the feature-set in terms of performance, before adding your feature in. Then add your feature in, and re-baseline to make sure that (at development scale) you haven’t dramatically changed the parameters.<br/>
<br/>

<p align="center"><img src="http://bit.ly/1KBkjxe" alt="Testing"></p>

You want a variance, to make sure this newly added feature hasn’t broken anything dramatically. This is risk-reduction rather than an absolute validation of scale. This means you can decouple your volume testing from your feature delivery and you can systematically volume test, as that pre-production environment becomes available.<br/>

The other way to do this is to automate all your environment creation and run up a full-sized production environment for your volume tests (for a short period of time) and run all your volume tests at the continuous integration stage, or system test stage, to make sure nothing is broken at scale. If scaling is important to your application, this is well worth the investment and time.<br/>
<br/>

<h2>Housekeeping</h2>
Don’t forget the housekeeping too. Make sure that:<br/>

* All of the tests pass based on the latest pull
* Any deployment scripts still work - you haven’t changed or added anything that can’t be deployed automatically
* Your database changes are scripted and tested
* These changes are signed off by your DBA
* Any batch or ETL jobs that run around your application are cognoscente of the database changes and of the features that you developed in the code
* You've checked any configuration changes that you’ve added in - if you’ve got an updated value, make sure that the creation of it is added to your environment configuration scripts (when you produce the next environment configuration for each environment, that value is populated across all environments)
* You update the story to be <i>‘done’</i> when all these are done
* The operation acceptance testers to look at the stories you’ve done
* Logging and monitoring have been updated
* Any change request shenanigans going along with operation acceptance or infrastructure and operations have been raised
* A release note is updated with this feature (ideally you generate these based on all the stories that are marked as <i>‘done’</i> for that tag)<br/>
<br/>

<h2>Do as Government Digital Service (GDS) would do</h2>
As GDS would do, get the sponsor to test the new feature in production. This is an optional step, but if you want to celebrate success on each feature, and you want absolute buy-in from this, then it’s a valuable investment.
