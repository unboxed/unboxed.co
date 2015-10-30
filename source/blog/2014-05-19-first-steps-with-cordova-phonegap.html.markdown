---
date: "2014-05-19 13:51:00 UTC"
published: true
title: "First steps with Cordova / PhoneGap"
author: "Veronika Hillebrand"
tags:
  - Design
  - Rails
---

##Fast and Native-Like Hybrid Applications with PhoneGap
Here is a short summary of a really good workshop I went to. It was part of the [JQuery 2014 Conference](http://jqueryuk.com) in Oxford.

###About the workshop
The workshop was held by [Christophe Coenraets](http://coenraets.org/), who used to work for Adobe as a [PhoneGap](http://phonegap.com/) developer advocate. Now he works for Salesforce.
The workshop consisted of two parts. The setup part, where we built a [small starter app](https://github.com/ccoenraets/phonegap-workshop-jquk2014/wiki/PhoneGap-Workshop) from scratch, and a second part where we built [a more advanced app](https://github.com/ccoenraets/phonegap-workshop-jquk2014/wiki/Building-an-Application-with-AngularJS-and-Ionic) using Ionic. [Ionic](http://ionicframework.com/) is a framework based on [Angular.js](https://angularjs.org/) which helps you set up very nice looking apps very quickly.

###What is PhoneGap?
PhoneGap provides a thin, lightweight wrapper on the mobile platform, with a web view that loads your HTML, CSS, JavaScript code.
It also "translates" certain JavaScript commands so they interface with native functions of your phone, like the camera or your contacts.

###Why Cordova/PhoneGap?
When developing apps for phones you have several choices... you can build native apps, you can build a responsive website or you can build a hybrid app using PhoneGap/Cordova or similar frameworks.

The relative benefits of PhoneGap apps and native apps are pretty clear - native apps look, perform and feel better than PhoneGap apps, but with PhoneGap you only have one codebase for all your phone apps.

What wasn't clear to me was why you wouldn't just let people bookmark your responsive website.

Here's why:

1. PhoneGap lets you package your app for distribution in the app stores. Note that if you don't add something to your packaged app which sets it apart from a web app, the app store may reject it.
2. PhoneGap lets you interface with functions on the phone that you couldn't access otherwise, for example:

* camera
* contacts
* notifications
* more here: [PhoneGap native features](http://docs.appery.io/documentation/using-native-device-features-phonegap/)

###What's the difference between Cordova and PhoneGap?
[Cordova](http://cordova.apache.org/) is the open source core of PhoneGap. In the words of [Michael Brooks (Adobe)](https://twitter.com/mwbrooks) "Cordova is to PhoneGap as WebKit is to Chrome". PhoneGap belongs to Adobe who package up Cordova and add on other stuff around it like compiling in the cloud.
Since Cordova is an open source project, it gets updated and improved upon all the time. It then takes PhoneGap a while to package the latest version up again. That's why Cordova is - at times - about 2 weeks ahead of PhoneGap. In our tutorial, we used Cordova.

###Less talk, more action!
If you can't wait to get your hands dirty building a PhoneGap application, this is the material we worked through in the workshop. Let me know if you have any questions. I can't promise I can answer them, but I'll try ;)

Step 1: Download the source files for the workshop:
[Source Files](https://github.com/ccoenraets/phonegap-workshop-jquk2014)

Step 2: Follow along with this tutorial to get set up and take your first steps with PhoneGap:
[Wiki - Basic app](https://github.com/ccoenraets/phonegap-workshop-jquk2014/wiki/PhoneGap-Workshop)

Step 3: Try your hand at something more involved and follow the tutorial on Ionic mobile app development:
[Wiki - Ionic / Angular app](https://github.com/ccoenraets/phonegap-workshop-jquk2014/wiki/Building-an-Application-with-AngularJS-and-Ionic)
