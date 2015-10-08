---
layout: "blog"
date: "2010-10-05 00:00:00 UTC"
published: true
title: "Unit testing on the iPhone"
author: "Borja Arias"
tags:
  - Testing
  - Rails
---

<p><img alt="" height="333" src="/uploads/Image/iphone_with_code.jpg" width="250" /></p>
<p>Developing for the iPhone can be quite fun. You get very mature frameworks to work with that do an extensive use of design patterns and you also get a fancy an highly tuned platform to play with.<br />
<br />
But there&#39;s something I&#39;m missing from the ruby community: the must test culture. If you have a look at some of the cocoa open source projects pages on the Internet you&#39;ll find very hard to find fully or even partially unit tested apps. The community seems to lack that culture that makes ruby developers test. I don&#39;t believe this is due to language specifics. For example ruby doesn&#39;t check the types or doesn&#39;t have a compiler to look after you. That&#39;s just the blue print. You also need to test the bulk of your application. Thus, In my opinion the real and simple reason of this differences are trends, fashions, people looking at you dodgy because you didn&#39;t write tests or even people making you feel cool because you did write tests. &nbsp;Communities are big creatures with a lot of power but hard to put in motion.<br />
<br />
Therefore, I would like to share an example on how to unit test one of the most common components in an iPhone app, a TableViewController. It&#39;s simple but illustrates a way to solve the problem. To make it more realistic, the TableViewController &nbsp;will get the data from a fetchedResultsController which uses the CoreData framework. The project includes some helper classes to abstract the Core data stack and make it easier to test.</p>
<p>You can find the sample at&nbsp;<a href="http://github.com/unboxed/Unit_Testing_Controllers_Iphone">github.com/unboxed/Unit_Testing_Controllers_Iphone</a></p>
<p>&nbsp;</p>

