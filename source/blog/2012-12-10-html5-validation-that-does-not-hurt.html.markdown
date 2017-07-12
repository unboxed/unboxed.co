---
date: "2012-12-10 12:10:00 UTC"
published: true
title: "HTML5 validation that does not hurt"
authors:
  - "Attila Gyorffy"
tags:
  - Rails
---

I'm sure probably most of you have used the W3C Validator at some point in the past. Validating  markup is quite a standard procedure. In case you want to automate your validation like we do and integrate it into your test suite, our [Be Valid Asset](https://rubygems.org/gems/be_valid_asset) gem is here to help. It adds convenient matchers to your test suite, be it RSpec, Cucumber or even MiniTest driven. You can use it to test all sorts of things: CSS, atom and RSS validation, and of course you can validate your entire markup. It's simple and declarative:

`page.should be_valid_markup` or `style.should be_valid_css` or even `"<p>This is an html fragment</p>".should be_valid_markup_fragment`. Go on, have a look at all the features. The code is open source and fully avaliable on [GitHub](http://github.com/unboxed/be_valid_asset).

Now, validating markup may have been a little bit trickier recently as these days a lot of new standard propositions emerge, browsers are catching up quite quickly, allowing us to start making use of these new techniques but unfortunately the official validators cannot quite keep up. Well, at least not quite yet.

For example in case you've been building responsive websites recently, you may have used the [HTML responsive Images Extension](http://picture.responsiveimages.org/). Now, there's only one problem with that: The [W3C validator](http://validator.w3.org/) does not know about it (yet) and some of those elements cause validation to fail. Ideally you would not have to do this but this is the time you may want to consider ignoring specific parts of your markup and validate the rest. Well, at least for now, until the validator catches up.

Our new version of Be Valid Asset has been released recently and It contains a new feature that allows you to alter your markup prior to validation. If you are using the `srcset` attribute on an `img` tag and want to remove it prior to validation, there's a configuration option for that.

Now you can get back validating your markup without having to worry about potentially failing builds. Go on, have a look at the documentation on [GitHub](http://github.com/unboxed/be_valid_asset) and install the gem today:

`gem 'be_valid_asset'`
