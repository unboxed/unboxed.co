---
date: "2010-07-26 00:00:00 UTC"
published: true
title: "Hacking Safari’s auto-complete feature"
authors:
  - "Attila Gyorffy"
tags:
  - Rails
---

<p>The recently released update to Safari (version 5.0.1) seems to fix the security issue described below.</p>
<p>Jeremiah Grossman <a href="http://jeremiahgrossman.blogspot.com/2010/07/i-know-who-your-name-where-you-work-and.html">points out</a> a serious security issue that he recently found in Safari.</p>
<p>You probably know about Safari&rsquo;s autocompletion feature that makes filling in web forms a piece of cake by mapping the input names to their corresponding entries in your Address Book card.</p>
<p>Basically using a small piece of JavaScript anyone could essentially detect and steal your personal information, including your name, address and email. This can be done by either navigating to a website that has a script like this running a background or by injecting an external script to any website using XSS technique. (The former one is a bigger security issue, the latter one can be avoided by escaping user generated data so make sure to do this at all times.)</p>
<p>There is a <a href="http://ha.ckers.org/weird/safari_autofill.html">proof of concept code</a> so you can see this yourself.</p>
<p>I&rsquo;m afraid at the time of writing this blog entry I can confirm that this security hole still exists in the latest official version of Safari (Version 5.0, 6533.16), however it seems like this issue has been addressed and fixed in the latest <a href="http://nightly.webkit.org/">nightly build of WebKit</a> (Version 5.0, 6533.16, r63958). You might be asking yourself if this issue affects Google&rsquo;s Chrome that happens to be using Apple&rsquo;s WebKit under the hood, but it didn&rsquo;t expose personal data while running the tests. Mobile Safari is also unaffected because its behaviour is different.</p>
<p>The issue can be addressed manually by disabling this functionality in Safari&rsquo;s preferences under the AutoFill tab.</p>
<p>This issue affects Safari version 4 and 5, with about 4% of combined market share (~83 million internet users) and has already been reported to Apple. <strike>We are hoping that they are going to release a new official version very soon that contains a fix. Given the relatively aggressive automatic system update feature built into OS X, the patch should spread across most users&rsquo; computers.</strike> Apple recently released an update to Safari (version 5.0.1) that has fixed the security issue.</p>
<p>&nbsp;</p>

