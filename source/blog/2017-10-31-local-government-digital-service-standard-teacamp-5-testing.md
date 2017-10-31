---
date: '2017-10-31 17:36 +0000'
published: true
title: >-
  Local Government Digital Service Standard - TeaCamp #5: Testing the end-to-end
  service 
authors:
  - Dawn Turner
tags:
  - Agile
  - Innovation
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/4822a9c927e36cbbc89c52daa71ca268.jpg
---

<i>As a network for digital practitioners in local government, LocalGov Digital is on a mission to raise standards in web provision and the use of digital by councils across the country.<br/>

The London Peer Group is aiming to focus on raising awareness of the Service Standard across the individual 32 boroughs of London, through a series of TeaCamps. [Unboxed](https://unboxed.co/) is supporting the London Peer Group by providing sponsorship and support.</i><br/>

![TeaCamp 4 - KPIs and metrics](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/2be97330956688953089486fa0ebf6b3.png)

Six weeks have flown by and it’s again time for the LocalGov Digital London Peer Group TeaCamp. On this occasion we are meeting at the heart of Whitehall at Richmond House - the official base for the Department of Health.

New location, new faces. We are pleased to welcome some new attendees to the group, including representatives from the Department of Transport, the Local Government Association and Waltham Forest; all keen to find out more about [Point 8 of the Digital Standard](http://localgovdigital.info/localgov-digital-makers/outputs/local-government-digital-service-standard/standard/8/):

![LocalGov Digital Service Standard Point 8](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/31f0d91b7e0d879d4bc65936d148cb2a.png)

[Couldn’t make it? Watch a video recording of TeaCamp #5](https://www.youtube.com/watch?v=marezpAuGGo)

Tea in one hand and cake in the other, we take our seats as Natalie Taylor, Chair of the London Peer Group opens the session with the announcement that this will be her last TeaCamp as Chair as she is moving on from the Greater London Authority.  

As the founding member of the London LocalGov Digital Peer Group, she has worked hard to bring together likeminded people from councils across London together to share best practice, particularly in terms of the Service Standard. We wish her all the best in the next step in her career.

Parish notices complete, it is time to hear from our data testing experts. First we welcome Steve Green, managing director of Digital Partners who has joined us to talk about Point 8 of the Service Standard in regards to front end software testing.

![Steve Green presenting](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/356111439289e6dc3528820790cab0e2.jpg)

## Testing the end to end service..

Automated or manual, scripted or exploratory? When it comes to testing your end-to-end service, there can be some uncertainty around which option or combination to choose.

Only manual testing can notice the unexpected; a tool will only check what you tell it to check and verify the assumptions that it is programmed to do, though automated testing can test large volumes of data once the scripts have been developed. Scripted testing can lead to a range of small complex tests in a short space of time and be used for a large number of repeatable tests. But exploratory testing can look beyond the expected correct responses and error displays and find new things that should be added as automated tests.

This tells us that there are clearly benefits and limitations to each style of testing, which is why, as Steve explains, you need to identify the right balance based on the context and be aware that this may change over time. For example, exploratory testing would help to highlight issues for a new piece of software that has been developed. These issues can then be frequently testing using automated tests to ensure the journey isn’t broken by any further development.

<blockquote class="twitter-tweet tw-align-center"><p lang="en" dir="ltr">“Always a balance to be struck in testing, speed vs thoroughness, cost vs risk. “ Steve Green <a href="https://twitter.com/hashtag/lgdss?src=hash&amp;ref_src=twsrc%5Etfw">#lgdss</a></p>&mdash; Natalie Taylor (@NatalieRobson) <a href="https://twitter.com/NatalieRobson/status/921046721727262721?ref_src=twsrc%5Etfw">October 19, 2017</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 

But, as obvious as this sounds, it rarely happens in practice. People tend to do what they have always done. If you want to effectively test your software, you need a strategy so you can respond to any changes and adjust your testing accordingly. Having a plan allows you to evaluate where you are now and where you want to be in the future. You need a starting point to be able to evaluate improvement over time.

## ..in an environment similar to that of the live environment..

If you want accurate repeatable results, you need to think about setting up a test environment that can recreate the conditions of a typical user.

To do this Steve suggests using a ‘clean’ test machines that only have the operating system installed and to avoid the use virtual systems or emulators. But, as one attendee points out, what about the cloud based testing tool, Selenium? This leads to some useful group discussion on the subject.

## ..including all browsers and devices

The Standard says that you should ‘analyse current user behaviour to determine the device and browser types in use.’ Steve considers this to be valid up to a point, but where possible you should look beyond your data set.

He believes that if the experience is poor in a particular browser or device, usage statistics could be disproportionately low, so should be compared with other statistical sources that have a similar user base and methodology. A time period of 1 week to 1 month should be enough to get a good idea of what people are using.

<blockquote class="twitter-tweet tw-align-center"><p lang="en" dir="ltr">Want to know which browsers you should be testing your applications on? Here are some free resources you can use <a href="https://twitter.com/hashtag/lgdss?src=hash&amp;ref_src=twsrc%5Etfw">#lgdss</a> <a href="https://twitter.com/LocalGovDigital?ref_src=twsrc%5Etfw">@LocalGovDigital</a> <a href="https://t.co/bvEljUbxkz">pic.twitter.com/bvEljUbxkz</a></p>&mdash; Natalie Taylor (@NatalieRobson) <a href="https://twitter.com/NatalieRobson/status/921046116296286208?ref_src=twsrc%5Etfw">October 19, 2017</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 

It can be difficult to access old versions of browsers once they are updated. Firefox tends to keep an archive, but Safari doesn’t. So a word of advice from Steve: store versions of browsers while they are still available, but also make a decision about which versions you are going to support.

To conclude the session Steve reminds us that testing is infinite. It is never complete and never completely thorough. It cannot give certainty that the software is bug free, but by making the right choices about the testing you do, it can reduce risk. It is also important to have a team who can support the product by fixing bugs rather than just keeping the servers running.

![David Durant presenting](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/a943b499349629f2010e9b47ef7162b0.jpg)

## An introduction to automated software testing

Speaking from a more technical perspective, David Durant who is a Senior Business Analyst at the GLA, is up next to give an insight into the world of automated testing.

In its early days, automated testing helped developers to test specific blocks of system code, but only in isolation from each other. Nowadays we have handy tools such as Jenkins, which can run automated tests of individual units of code, and again once they are integrated. Being able to test a complete end-to-end user journey, usually with a plug in called Selenium, developers can be alerted if a new section of code breaks code that had previously been added.

<blockquote class="twitter-tweet tw-align-center"><p lang="en" dir="ltr">.<a href="https://twitter.com/cholten99?ref_src=twsrc%5Etfw">@cholten99</a> explaining the delights of Jenkins, unit, smoke, black box, load &amp; pen testing. <a href="https://twitter.com/hashtag/lgdss?src=hash&amp;ref_src=twsrc%5Etfw">#lgdss</a> <a href="https://t.co/yyjnSUyQNv">pic.twitter.com/yyjnSUyQNv</a></p>&mdash; Natalie Taylor (@NatalieRobson) <a href="https://twitter.com/NatalieRobson/status/921056478227849217?ref_src=twsrc%5Etfw">October 19, 2017</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 

Automated testing can be used to test all sorts of things including different browsers and how many interactions a piece of software can take.

But thanks to software such as Cucumber, automated testing can also help to determine whether a product meets the needs of front end users. By running automated user acceptance tests in a Behaviour Driven Development (BDD) style, a particular behaviour (written in plain English) can be converted into a test script to verify that it works in the system. This approach allows product owners to apply structure to their requirements, which in turn gives developers a solid foundation of what the software should be.

Automated testing has come a long way over the years. The more you can automate through clever and strategic script writing, the more ground you can cover for testing.

It’s now past 6pm and Natalie draws TeaCamp to a close, but the conversation is still in full flow. Clearly it’s time for #BeerCamp.

If the session has whet your appetite for finding out more about software testing? Check out [Point 10 of the Government’s Digital Service Standard: Test the end-to-end service](https://www.gov.uk/service-manual/service-standard/test-the-end-to-end-service)

![Conversation over tea and cake](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/4822a9c927e36cbbc89c52daa71ca268.jpg)

## TeaCamp 6

We’ll be back in our usual spot, in the basement of the Draught House in Tower Bridge, for our TeaCamp on Thursday 30 November. We will focus on [Point #12 of the Local Government Digital Service Standard](http://localgovdigital.info/localgov-digital-makers/outputs/local-government-digital-service-standard/standard/12/):

'Encourage maximum usage of the digital service (with assisted digital support if required)'.

[Ben Carpenter, Inclusive Services & Assisted Digital Lead at Government Digital Service](https://www.linkedin.com/in/bencarpenter1975/) will be leading this informative and practical TeaCamp session, sharing how GDS currently measure the update of their digital services.

If you are not on our mailing list and would like to join us for the next TeaCamp event, email David Durant ([David.Durant@london.gov.uk](mailto:David.Durant@london.gov.uk)).