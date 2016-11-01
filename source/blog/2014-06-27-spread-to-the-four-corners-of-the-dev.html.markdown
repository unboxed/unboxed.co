---
weekly_roundup: true
date: "2014-06-27 12:30:00 UTC"
published: true
title: "Spread to the four corners of the dev"
authors:
  - "Murray Steele"
tags:
  - Rails
---

## Understanding strong parameters - [Murray](/people#murray-steele)

http://patshaughnessy.net/2014/6/16/a-rule-of-thumb-for-strong-parameters

Rails 4 has been around for a while now, so we should all be pretty familiar with the ins-and-outs of the "strong parameters" approach to avoiding mass-assignment security problems.  However, I know I can't be the only one that finds it a little confusing when to permit params that are structured in a more complex manner, so it's really good to have this rule of thumb from [Pat Shaugnessy](http://patshaughnessy.net), even if it is pretty silly:

> _To Permit a Hash, Pass an Array_
>
> _To Permit an Array, Pass a Hash_

The blog also goes into some of the detail of how the parameter permission code works, so there's something for everyone.  I must admit I found it surprising that it's not the params object itself that complains, but that [``ActiveModel`` instances that will raise the error](https://github.com/rails/rails/blob/master/activemodel/lib/active_model/forbidden_attributes_protection.rb#L19-24).

## ``git``, open-source projects, & pull requests - [Murray](http://www.unboxedconsutling.com/people#murray-steele)

http://blog.spreedly.com/2014/06/24/merge-pull-request-considered-harmful/

I've seen quite a few open source maintainers complaining about the pull-request model in the past but none have explained exactly why.  This is a really good article from the point of view of a maintainer of [ActiveMerchant](https://github.com/Shopify/active_merchant) ( [Nathanial Talbott](https://github.com/ntalbott)) that goes into why they don't really like pull-requests, but also how they deal with them when things do go awry.  There's lots of really good stuff in here:

* tips for using ``git`` subcommands you might not be aware of
* how to contribute to an OSS project
* how to maintain one if you have lots of dead pull requests

Something for everyone!

## jQuery plugin: input masks - [Tom S](/people#tom-sabin)

[jQuery Mask Plugin](http://igorescobar.github.io/jQuery-Mask-Plugin/): a nice plugin for input fields, it can be used for masking and binding events for completion/change/key press. I have used this in two circumstances so far, one for a postcode input, and the other for day-month-year text fields.

Text fields are the [recommended option for users to input dates](https://www.gov.uk/service-manual/user-centred-design/resources/patterns/dates.html#memorable-dates), however, I find that having to tab to the next field is just too much work, so you should make the browser do it for you instead! This is super easy to do. Assume you have 3 input fields; one for the day, another for the month and lastly one for the year. Now you can use something similar to the following snippet of code:

	var day   = $('#date_day'),
	    month = $('#date_month'),
	    year  = $('#date_year');

	day.mask('AA', {
	  onComplete: function () {
	    month.focus();
	  }
	});

	month.mask('AA', {
	  onComplete: function () {
	    year.focus();
	  }
	});

Voilà.

Moving onto our postcodes example, we can mask UK postcodes in any of the following formats:

- `AAAA AAA`
- `AAA AAA`
- `AA AAA`

In order to do this using the jQuery plugin, the following snippet seems to work well: `$('#postcode').mask('AAAA AAA', { reverse: true });`.

My only comment about this plugin, however, is when you go to select all characters, e.g. using the keyboard shortcut. **Sometimes** it breaks out of the selection to move the cursor to after the first character. Weird.

## The Simpsons in CSS - [Tom S](/people#tom-sabin)

Some Simpsons characters made purely from CSS: http://pattle.github.io/simpsons-in-css/

## Functional Composability - Patrick V

[https://michaelfeathers.silvrback.com/literate-chains-for-functional-programming](https://michaelfeathers.silvrback.com/literate-chains-for-functional-programming)

I always enjoy Michael Feather's posts as they are generally
practical and interesting.  This one is about functional composability and
is an interesting idea for increasing readability.

## ActiveRecord Spec Helper - Patrick V

[http://articles.coreyhaines.com/posts/active-record-spec-helper/](http://articles.coreyhaines.com/posts/active-record-spec-helper/)

Corey Haines' ``active_record_spec_helper`` is
helpful in speeding up your TDD cycle for Active Record objects.  We've
been using it when developing on Rails 2 and it is a joy.

## A selection of links inspired by [FEL](http://www.frontendlondon.co.uk/) - [Tom S](/people#tom-sabin)

I went to the [June Front End London meetup](http://lanyrd.com/2014/front-end-london-june/) last night, and came away full of new ideas and things to look into.  I've collected some of them below:

> ### Top Codepens of 2013
>
> [http://codepen.io/2013/popular/](http://codepen.io/2013/popular/)
>
> Great selection of what the combination of HTML, CSS and JS can do. Far too many to goggle at.
>
> ### Effeckt.css
>
> [http://h5bp.github.io/Effeckt.css](http://h5bp.github.io/Effeckt.css)
>
> A library for performant CSS transitions and animations , still in development.
>
> ### Can haz ur cursor?
>
> [http://simurai.com/projects/cursor-monster/](http://simurai.com/projects/cursor-monster/)
>
> Feed the monster your cursor.
>
> ### We Are Data (Watchdogs)
>
> [http://wearedata.watchdogs.com/](http://wearedata.watchdogs.com/start.php?locale=en-EN&city=london)
>
> Visualise a bunch of open data on an interactive map:
>
> ![image](https://dl.dropboxusercontent.com/u/2217931/dev-newsletter-wearedata.png)
>
> - Social posts (tweets/instagram/foursquare/flickr)
> - CCTV cameras, traffic lights, ATMs
> - London Underground stations, positions of tubes

## The Art of Organizational Manipulation - Karl

https://www.youtube.com/watch?v=OTCuYzAw31Y

[Brian Fitzpatrick](http://www.red-bean.com/fitz/) and [Ben Collins-Sussman](http://www.red-bean.com/sussman/) help you understand the human element of navigating companies both big and small. I found the criteria listed at the beginning of the video, ‘the perfect company’, particularly interesting.
