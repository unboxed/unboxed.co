---
date: "2010-08-10 00:00:00 UTC"
published: true
title: "The abominable Rails 3 snowman doesn't like Rack-Test"
author: "Alan Kennedy"
tags:
  - Rails
---

<p>I recently started a Rails 3 application to see how things are done in the new version, and also to take an opportunity to try Mongoid. After all, Rails now plays nicely with any library that implements&nbsp;ActiveModel.</p>
<p>&nbsp;</p>
<p>The application is very basic, with normal CRUD and file uploads; but after upgrading the&nbsp;application from Rails 3 beta 4 to the Release Candidate I found that a Cucumber feature for uploading files was broken.</p>
<p>To do the file uploads I am using MongoFS, which is part of Mongo and deals with binary files in the DB; Carrierwave to handle the uploads in Rails (a nice ORM agnostic replacement for Paperclip); and Capybara with rack-test for acceptance testing. This all worked without problems in beta 4. So when Cucumber broke after upgrading I started investigating: uploading was still possible in development but Cucumber would fail with an encoding error (the application runs with Ruby 1.9.2) and no meaningful backtrace.</p>
<p><strong>incompatible character encodings: UTF-8 and ASCII-8BIT (Encoding::CompatibilityError)<br />
./features/step_definitions/web_steps.rb:29:in `block (2 levels) in &lt;top (required)&gt;&#39;<br />
./features/step_definitions/web_steps.rb:14:in `with_scope&#39;</strong></p>
<p>After a while using the debugger, I tracked the problem in Rack-Test, which is not escaping the parameters that are part of multipart body. This is a big problem in Rails 3 RC because it sends the _snowman parameter with value ☃ (a unicode character) and an encoding error happens in Rack-Test. To those curious as to the reason behind the snowman, it&#39;s there to enforce the encoding in Internet Explorer. The parameter was renamed to _e a couple of days ago, I guess in honour of Internet Explorer... The reasons for the&nbsp;☃ are well explained in its own dedicated page <a href="http://railssnowman.info/">here</a>&nbsp;and also&nbsp;<a href="http://github.com/rails/rails/commit/25215d7285db10e2c04d903f251b791342e4dd6a#commitcomment-118076">here</a>.</p>
<p>I&#39;ve submitted a bug <a href="http://github.com/brynary/rack-test/issues#issue/14">report</a> for this in rack-test github issues, and am waiting for my fix to be merged. So if you have come across this problem and want to get your Cucumber tests working go ahead and use my <a href="http://github.com/alan/rack-test">fork</a> in your Gemfile until this is fixed, and also comment on the bug report so this gets merged soon. Hopefully Google will index this blog post and help other early adopters with the same problem.</p>
<p>One last thing, in cases like this where Cucumber backtraces are not enough, you can run Cucumber with -b / --backtrace parameter to show normal backtraces. Knowing this woud have saved me time in the debugger.</p>
<p>At least now tailing the logs will be a bit more fun with the&nbsp;☃ appearing on every request!</p>

