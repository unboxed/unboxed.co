---
layout: "blog_article"
weekly_roundup: true
date: "2012-11-16 18:19:00 UTC"
published: true
title: "New version of Rails, a new patch level of Ruby 1.9.3 and kittens, oh my!"
author: "Attila Gyorffy"

---

# Highlights of the week:

### [Ruby 1.9.3-p327 released](http://www.ruby-lang.org/en/news/2012/11/09/ruby-1-9-3-p327-is-released/)

NOTE: It includes an important security fix for Hash-flooding DoS vulnerability for Ruby 1.9. In case you are using earlier versions of Ruby 1.9 in production systems, it's highly recommended that you upgrade. Rails applications may be vulnerable to an attacker sending a specially-crafted HTTP request to exploit this.

Linux based package managers are known to be good at keeping up to date. You can also install it via RVM, or if you prefer using Sam Stephenson's rbenv ad ruby-build, then you can use the HEAD version of ruby-build that has a definition file. On Mac OS X you;'d better use Homebrew for this:

    $ brew install ruby-build --HEAD
    $ rbenv install 1.9.3-p327

The Rails guys over on the blog also explain how to limit the effectiveness of potential attacks. Go on, [read it](http://weblog.rubyonrails.org/2012/11/12/ann-rails-3-2-9-has-been-released/). You might learn a thing or two.

### [Rails 3.2.9 is out](http://weblog.rubyonrails.org/2012/11/12/ann-rails-3-2-9-has-been-released/), [Rails 4 is coming strong](http://blog.wyeworks.com/2012/11/13/rails-4-compilation-links)

Well, this week Rails 3.2.9 has ben released. This might not be too exciting for most of us as I reckon many of us are waiting for Rails 4 to arrive. WAT?! U DUNNO RAILS 4?! Go on and [find out more about it](http://blog.wyeworks.com/2012/11/13/rails-4-compilation-links/). It's a useful list of things that are changing in Rails 4, along with links to relevant blog posts, gems, railscasts, pull requests etc. [Murray](http://www.unboxedconsulting.com/people/murray-steele) reckons it's a living document, so it'll get updated as things change or more content is added.

### [Infinite Jukebox](http://musicmachinery.com/2012/11/12/the-infinite-jukebox/)
With the Infinite Jukebox, you can create a never-ending and ever changing version of any song. Using [The Echo Nest](http://developer.echonest.com/), the application breaks down any song into individual beats, so that it can play it infinitely. Awesome stuff, after seeing this our Rob feels super inspired to go to the [Music Hackday London](https://www.hackerleague.org/hackathons/music-hack-day-london/hacks) tomorrow!

### [Resurrecting broken Chrome extensions](http://heartcode.github.com/blog/2012/11/15/fixing-the-trailing-slash-issue-in-the-invalid-chrome-extension-manifest-file)

aka 'How to make your broken Chrome extension work again'. Rob explains it briefly:

> After an update my [Chrome extension](http://goo.gl/EmA52) didn't want to install in Chrome anymore. After spending long hours of debugging and fixing the issue, which was caused by the Chrome team updating the browser without documenting changes that effect quite some extensions in the Chrome Web Store, I wrote a post about the issue with [my findings](http://heartcode.github.com/blog/2012/11/15/fixing-the-trailing-slash-issue-in-the-invalid-chrome-extension-manifest-file).

### [Git and GitHub Secrets](http://confreaks.com/videos/1229-aloharuby2012-git-and-github-secrets)
Zach Holman's presentation from the Aloha Ruby Conf 2012 about the 'secrets' behind Git and GitHub. There are things that we all know and use every day, but there are also things, that I personally didn't have a clue about and look super useful. Check out the video, you might find a real secret yourself :)

Also, let's be honest: Sometimes Git can be a bit frustrating. Check out '[When in Git](http://wheningit.tumblr.com/)' and you will know what we mean. (Thanks Matt for posting this)

### [Last but not least: Kitten cam](http://new.livestream.com/accounts/398160/events/1594566/player_pop_up)

Best thing I've seen all week:
> … because an uninterrupted stream of kittens is the only thing that can generate enough relax with things going on.

Thank you [Tom ten Thij](http://www.unboxedconsulting.com/people/tom-ten-thij) for posting this. Made my day and made it worth having a second monitor for real.
