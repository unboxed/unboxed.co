---
date: "2014-02-06 08:54:00 UTC"
published: true
title: "Native Chrome apps on mobile"
authors:
  - "Henry Turner"
tags:
  - Innovation

---

![Planning Poker](https://s3-eu-west-1.amazonaws.com/unboxed-web-images/1c173410201f4c56c24fd491c82717ea.jpg)

At the end of January some [big news passed quietly](http://blog.chromium.org/2014/01/run-chrome-apps-on-mobile-using-apache.html) on the Chromium blog. Mobile Chrome apps can now be wrapped up using Cordova to deploy native applications to iOS and Android. Google seems to be pouring money into Chrome like it’s the cold war so I felt this recent release deserved a mini-dive in.

First off, the Chromium-Chrome-ChromiumOS-Chromiumiiumimmm project is pretty terribly named and not particularly self explanatory. A very brief description of my understanding is probably in order.

[The Chromium Projects](http://www.chromium.org/) are two projects, ‘Chromium OS’ and ‘Chromium’. ‘Chromium OS’ is the operating system on Google Chromebooks. ‘Chromium’ is a browser split into separate projects. Very roughly there are three major sections to the Chromium browser project. There is Blink (once Webkit), the Content module and... 'Chrome' (really?). Blink is the rendering and javascript engine. The Content API deals with a range of features such as sandboxing, indexedDB and some other HTML5 features. And most of the rest falls into ‘Chrome’. Extensions, Autofill, [NaCl](https://developers.google.com/native-client/dev/), Safe browsing and a **lot** else all lives in Chrome and the Chrome browser.

[Cordova](http://cordova.apache.org/) is an open source project to wrap html, javascript and css applications up in a shell of native code. The shell exposes hardware functions such as the camera, GPS, storage etc as javascript APIs and let’s you publish apps in Apple’s App Store and the Android stores as though you’d written it in Obj-C or Java. You can’t make 3D games with it but our Mums could probably smash out a todo application without too much bother.

The problem with Cordova was that the browser bit was fairly crippled, slow and buggy. This recent release is a replacement for that browser bit with mobile Chrome. The original Cordova APIs are still there. But now mixed in, or on top of, are the mobile Chrome APIs too. Payments, push notifications, Google Drive sync and even scheduled processing are ready to be used.

I had a crack at making a Planning Poker app with it, failing to use any of the new Chrome features in the process, and really enjoyed producing something inaccessible to me otherwise. The toolchain CLI is quite nice and it certainly seems fast and bug free. I went from pawing over the install notes to a working version in the play store in about 5 hours!

As for the political reasons why Google is pushing so hard for the browser-as-a-platform… That’s a chat for around the kettle :)
