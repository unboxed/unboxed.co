---
layout: "blog"
weekly_roundup: true
date: "2013-03-01 15:26:00 UTC"
published: true
title: "This week's developer newsletter - cats, conferences, and cascading style sheets"
author: "Andrew Mitchell"
tags:
  - Rails
  - Design
---

Roll up.. roll up! Welcome everybody to this weeks one and only dev newsletter. First up this week its time to celebrate… it is Friday after all!

## Ruby 2.0.0 is out! - [Matt P](http://www.unboxedconsulting.com/people/matt-peperell)
[http://www.ruby-lang.org/en/news/2013/02/24/ruby-2-0-0-p0-is-released/](http://www.ruby-lang.org/en/news/2013/02/24/ruby-2-0-0-p0-is-released/)

..and by the looks of things, the incompatibility list is quite small.

## ..and a shameless plug for [Ruby Manor 4](http://rubymanor.org/4/) - [Murray S](http://www.unboxedconsulting.com/people/murray-steele)

[Ruby Manor 4](http://rubymanor.org/4/): CFP closes Monday 4th, Voting starts shortly after.

[http://blog.rubymanor.org/post/44288384490/get-your-proposals-in-by-monday-4th-march](http://blog.rubymanor.org/post/44288384490/get-your-proposals-in-by-monday-4th-march)

The ruby conference I'm co-organising might be sold out, but that doesn't mean you can't get in!  All our speakers will be given a ticket if they don't have one.  The CFP closes on Monday 4th, so there's still time to propose a talk: [http://vestibule.rubymanor.org/proposals/new](http://vestibule.rubymanor.org/proposals/new).  The CFP is completely open and anonymous, so even if you're not going to propose something, you should sign up and leave some comments.  In a few days time we'll open up voting and let the community pick the talks they want to see on the day.  If you don't have a ticket, you can still get involved and vote as we film all the talks and release them to the world, so your opinions are still valid.

## ActiveSupport::MethodOfTheWeek - [Andrew M](http://www.unboxedconsulting.com/people/andrew-mitchell)
Do you find yourself regularly repeating specific sets of options when you are writing your code. `with_options` might help make things a little more dry and a little easier to read.

	class Person < ActiveRecord::Base
	  has_many :comments,   dependent: :destroy
	  has_many :posts,      dependent: :destroy
	end

The above can be refactored to the below example. It's a little contrived but over a large set of associations it can be a pain to keep writing the same stuff again and again.

	class Person < ActiveRecord::Base
	  with_options { dependent: :destroy } do |association|
	    association.has_many :comments
	    association.has_many :posts
	  end
	end


## CSS: Damn it! I am doing it in tables -[Rob P](http://www.unboxedconsulting.com/people/robert-pataki)
These days devs use CSS preprocessors and [Source Mapping](http://bricss.net/post/33788072565/using-sass-source-maps-in-webkit-inspector) for debugging. However there are others, who want to go back to the stone age and simply use tables. Crazy world...
[http://www.neogaf.com/forum/showthread.php?t=516644](http://www.neogaf.com/forum/showthread.php?t=516644)

## Use source maps in Chrome inspector to make your SASS debugging an easy job - [Rob](http://www.unboxedconsulting.com/people/robert-pataki)
I love using Compass (which is basically awesomified™ SASS) either for Rails or simple HTML projects. With the experimental [Source Mapping](http://www.html5rocks.com/en/tutorials/developertools/sourcemaps/) feature and the support of SASS in Chrome developers now can much easier track down the origin of each style definition with line per file accuracy.

There is one thing we've realised today, which is when source maps used without Compass in a Rails 3 project, you will need to `//=require` the sass files instead of importing them, otherwise SASS won't generate the debug info with the correct syntax. On the other hand with Compass you don't have to worry about this, as you can just use `@import`s.

Read on: [http://bricss.net/post/33788072565/using-sass-source-maps-in-webkit-inspector](http://bricss.net/post/33788072565/using-sass-source-maps-in-webkit-inspector)

## Pipe Viewer - [Will T](http://www.unboxedconsulting.com/people/will-tomlins)
Having to load up a large sql file?  Want to know how long it's going to take?  So... you've got two options when loading a dump - Either run mysql as per usual with no output whatsoever or run it with the `--verbose` flag and get so much output the only effect it has is to inform you that it's still running.  I came across a nifty little utility today called pipe viewer.

	brew install pv

Then instead of running

	mysql -blahblahblah database_name < dump.sql

Run

	pv dump.sql | mysql -blahblahblah database_name

And then you get this:

	> 715MiB 0:02:10 [4.83MiB/s][=========>       ] 55% ETA 0:01:45

Instead of this:

	>


## Every last drop - keep scrolling please - [Rob P](http://www.unboxedconsulting.com/people/robert-pataki)
A really cute edutaining site that keeps you scrolling for a long time, whilst telling you about how expensive clean water is and what you can do for sustainable water use.
[http://everylastdrop.co.uk/](http://everylastdrop.co.uk/)

## [Steve](http://www.unboxedconsulting.com/people/steve-barnett)'s Hot Link Action
### Psychology Corner

[http://psychologyfordesigners.com/](http://psychologyfordesigners.com/)

A blog accompanying the pocket ebook from Five Simple Steps. Two choice links from the book:

[http://robotregime.com/](http://robotregime.com/)

Provoking discussion about the role of ethics in web design.

[http://www.behaviorwizard.org/wp/](http://www.behaviorwizard.org/wp/)

The Behavior Wizard can help you design for successful behavior change.

### Food for thought corner

[https://medium.com/work-education/6152adc41de9](https://medium.com/work-education/6152adc41de9)

Play by your own rules.

[http://www.designstaff.org/articles/always-be-capturing-2013-02-22.html](http://www.designstaff.org/articles/always-be-capturing-2013-02-22.html)

A tip for effective meetings: Always be capturing.


[http://www.pebbleroad.com/perspectives/observations-on-use-of-mobile-devices-at-airports-and-train-stations](http://www.pebbleroad.com/perspectives/observations-on-use-of-mobile-devices-at-airports-and-train-stations
)

Observations on use of mobile devices at airports and train stations

[http://www.jenseninman.com/blog/13747040/innovation-is-connection](http://www.jenseninman.com/blog/13747040/innovation-is-connection)

Innovation is connection, and a culture of innovation is a culture built through connecting.


### Design and Dev Corner

[http://niice.co/](http://niice.co/)

Search for inspiration.

[http://typeplate.com/](http://typeplate.com/)

Typeplate is a “typographic starter kit”.

[https://github.com/christiannaths/Redacted-Font](https://github.com/christiannaths/Redacted-Font)

Redacted: A Font for Web and Desktop. Keep your wireframes free of distracting Lorem Ipsum.

[http://weareallaweso.me/](http://weareallaweso.me/)

A blog with the intention of motivating, encouraging, and helping people begin speaking at conferences.


## Um, what? Corner (aka Cat Corner)

[http://bringinthecats.com/](http://bringinthecats.com/) - [Steve B](http://www.unboxedconsulting.com/people/steve-barnett)

Um, What?

[https://twitter.com/CatUserStories](https://twitter.com/CatUserStories) - [Matt P](http://www.unboxedconsulting.com/people/matt-peperell)

[http://www.filldisk.com/](http://www.filldisk.com/) - [Matt P](http://www.unboxedconsulting.com/people/matt-peperell)

Read the name of this site carefully. Visit it, sure, but do not leave it open in a tab unless you're using Firefox.  OK, now that the warnings are out of the way I shall explain a little bit more.  It's a site which gives an endless stream of cats (who doesn't love such sites?) using the HTML 5 localStorage. There are problems with the implementations of many popular browsers meaning that this storage can be abused. More details explained on the site.  Dare you click?

