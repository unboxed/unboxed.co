---
weekly_roundup: true
date: "2012-08-09 23:00:00 UTC"
published: true
title: "The Week That Went Better Than The Last"
author: "Andrew Mitchell"
tags:
  - Rails
---

Bender is full of rage. Beware Bender's wrath!

##ActiveSupport Method/Class of the Week: [MessageVerifier](http://api.rubyonrails.org/classes/ActiveSupport/MessageVerifier.html)

To follow with last weeks inconsistency. This week we ae back to ActiveSupport. I found myself this week looking into creating signed messages for email unsubscribe links and I came accross the ActiveSupport::MessageVerifier. Not so much of a method but a class for generating signed messages and verifying them.

Create a new verifier

	@verifier = ActiveSupport::MessageVerifier.new(Rails.application.config.secret_token)

in your view

	 <% signature = @verifier.generate(@user.id, @email.id) %>
	 <%= link_to email_subscription_path(@email, :signature => signature), :method => :delete %>

in your controller

	def destroy
	  user_id, email_id = @verifier.verify(params[:signature])
	rescue ActiveSupport::MessageVerifier::InvalidSignature
	  # not verified
	end

You can also pass options to the MessageVerifier on initialisation. These are the digest which defaults to SHA1 and the serialiser which defaults to Marshal.


##CSS Sprites to optimize websites for retina displays (Robert P)
[http://miekd.com/articles/using-css-sprites-to-optimize-your-website-for-retina-displays/](http://miekd.com/articles/using-css-sprites-to-optimize-your-website-for-retina-displays/)

Using CSS sprites is a very great idea and let's us to optimise sites, so we can save file size, bandwidth and make less http requests which all makes sense to the user.
This article explains how to take CSS sprites to the next level and use them to serve retina displays with double pixel ratio images.

##Object#tap (Chris P)

I've been using tap more and more in recent weeks and I'm finding it surprisingly elegant. It feels a bit like the unix tool 'tee', if you've used that before. So how do we use tap?

	my_object.tap { |o| do_something_with(my_object) }

So it simply yields 'self' to the given block. Why is this useful?

Well the cool thing about tap is it always returns the object itself. This means that we can drop tap in a method chain, do some debugging and carry on as if tap weren't there.


	@posts = Post.where(:author => 'foo').tap { |posts| puts "#{posts.count} posts with author foo" }

You can use #tap for other things too. Here's quite a nice refactoring I found.

    def client
      client = HTTPClient.new
      client.set_auth(base, username, password)
      client
    end

refactored to

	def client
	  HTTPClient.new.tap { |c| c.set_auth(base, username, password) }
	end


## The Slow Web (Andrew M)
[http://blog.jackcheng.com/post/25160553986/the-slow-web](http://blog.jackcheng.com/post/25160553986/the-slow-web)

An interesting article about timeline patterns on the web.

##Appliness e magazine (Robert P)
[http://www.appliness.com/](http://www.appliness.com/)

Developer magazine written by developers for developers. How lovely!
There are loads of application dev. tutorials and articles. They also have a free to download magazine for tablets.

## The Unboxed CSS Validator (Jolyon P)
We have updated the Unboxed CSS validator and made a small change to the [be_valid_asset gem](https://github.com/unboxed/be_valid_asset) (version 1.2.2) so that now if vendor specific extensions are used in css files,  validation will pass.

To run css validation against all your stylesheets, try something like:

	describe "css" do
      it "should all be valid" do
        Dir[Rails.root.join("app/assets/stylesheets/**/*.css")].each do |css_file|
          puts css_file
          css = File.read(css_file)
          css.should be_valid_css3
        end
      end
    end


## Drag and Drop Grids (Andrew M)
[http://gridster.net/](http://gridster.net/)
I have been trying to find some cool and interesting ways to do layouts of late for my own personal portfolio when I came accross Dragster a JQuery Drag and drop grid plugin. http://gridster.net/ Similar thinking, I believe, to some of the original ideas proposed for the Unboxed website a fair while back now.


##Semantic breadcrumb (Robert P)
[http://coderwall.com/p/p0nvjw?i=5&p=1&q=](http://coderwall.com/p/p0nvjw?i=5&p=1&q=)

A quick but very useful tutorial that shows how we can add semantic meaning to our breadcrumbs. Pretty cool to see how Google catches these and puts them in their search results!

## Amazing… (Leo C)
[http://patriciopalladino.com/blog/2012/08/09/non-alphanumeric-javascript.html](http://patriciopalladino.com/blog/2012/08/09/non-alphanumeric-javascript.html)
