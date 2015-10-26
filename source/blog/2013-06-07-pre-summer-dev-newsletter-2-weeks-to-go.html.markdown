---
layout: "blog_article"
weekly_roundup: true
date: "2013-06-07 14:05:00 UTC"
published: true
title: "Pre Summer Dev Newsletter (2 weeks to go)"
author: "Seb Jacobs"
tags:
  - Rails
  - Agile
  - Lean
---

## Are coders worth it?
An interesting article which questions the value of the work we do.

http://www.aeonmagazine.com/living-together/james-somers-web-developer-money/


## Wrapping up a C Library for Ruby. It's actually pretty easy!
Another blog post about writing a ruby wrapper for a c library.

http://blog.firmhouse.com/wrapping-up-a-c-library-for-ruby-it-s-actually-pretty-easy


## The Race For Speed Part 1
The first in a series of articles about the history of javascript engines and how javascript compilers work.

http://creativejs.com/2013/06/the-race-for-speed-part-1-the-javascript-engine-family-tree/


## Rails Girls London (21-22 June 2013)
Rails Girls is returning to London, they're still looking for participants and volunteers.

http://railsgirls.com/london


## Method from the future! (Hash#transform_keys)
In rails 4 the `transform_keys` method will be at your disposal.
It works in the same way as `stringify_keys` or `symbolize_keys`, but takes a block as an argument. It allows you to specify how you would like to format your keys.

	hash = {foo: 'one', bar: 'two', baz: 'three'}
  	hash.transform_keys do |key|
 		key.to_s.capitalize
	end
	 => {"Foo"=>"one", "Bar"=>"two", "Baz"=>"three"}


