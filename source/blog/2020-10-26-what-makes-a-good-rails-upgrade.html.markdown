---
title: 'What makes a good Rails upgrade? '
authors:
  - Celia Collins
tags:
  - Agile
  - Culture
  - Rails
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/e70ca9ff03cee1c5311aeaf33485f86e.png
date: '2020-10-26T12:10:51+00:00'
published: true
---
Recently, Unboxed has been working with a large organisation to help upgrade the various Rails applications that make up their website to Rails 6. Personally, I had done a few upgrades here and there, but never on such a wide scale and such a large number at once. Doing so many not only helped me understand how Rails does some of its magic, but also drilled into me how to do an upgrade in a good, methodical way. 

Here’s what I learned.

_Go minor version by minor version_<br>
If the application is on a version of Rails that’s really far behind the current version, you definitely don’t want to suddenly change to the newest version. All the changes that have happened in between will be upon you, and you will have missed any deprecation warnings meaning parts of your code may just not work any more. Instead, upgrade by minor version, for example going from 5.1, to 5.2, to 6. That way you won’t miss any major changes and you can catch any problems that might arise on the way up to a big version change. 

_Fewer dependencies mean fewer problems_<br>
Remember when you added that gem a year ago because it made your life easier and saved you a couple of hours work? Well now it’s coming back to haunt you. Turns out that gem isn’t maintained anymore and definitely won’t work with the newest Rails version. What saved you time then will cost you time and a big old headache now. I spent much of the project rewriting forms that used a gem to the native Rails forms, since the gem hadn’t been updated in seven years! Now I will always think twice before installing a new gem. 

_Wait for the right time_<br>
To clarify, it’s always good to upgrade to the latest version of software, what I mean is don’t do it in the middle of the big overhaul refactor your team has set out to do. If you do, then who knows whether those failing tests are due to the refactor or the upgrade? And now that that piece of code is gone, you actually don’t need that new Rails config, but you’ve got it anyway because that bit of the refactor happened after the upgrade. Wait until your codebase is at a relatively stable point and then go for it. 

_Use what the Rails folk have given us_<br>
Running “rails app:update” can be overwhelming, there are lots of file changes and lines added and taken away. Once you’ve run it all, double check it against railsdiff.org. That way, if you accidentally deleted a line, or didn’t understand the change so didn’t accept it, you can catch your mistakes and move towards the correct configuration. It enables you to sanity check the upgrade and demystifies a lot of what goes on. 

_Document, document, document_<br>
Finally, make sure you keep track of all the tricky configuration changes you had to make, and the way that you handled that gem upgrade. Later, when you have to upgrade again, or hand it over to another colleague, you’ll know what problems you ran into and how you solved them, saving time and energy. While working on the project our team kept a document of all the issues we ran into. Then, when I remembered someone had mentioned something similar to the problem I had hit, I read what they had done and it was fixed easily. 

Upgrading applications is something we’ll all have to do at some point, and usually quite regularly. Making sure you have good practices will ease the transition and make it as painless as possible.
