---
weekly_roundup: true
date: "2012-05-10 23:00:00 UTC"
published: true
title: "The Week In Links"
author: "Luke Randall"
tags:
  - Rails
---

Welcome to this weeks installment. I - your humble guest editor, Luke R. - submit for your consideration the following lovingly curated selection of internets.

## Ruby

### Koans of wisdom - Robert P.

I've still been learning Ruby and RoR, which is a very interesting learning curve. Amongst the countless screencasts and tutorials I've found, there are some really nice and effective learning tools.

These are the ones I like the most: You can learn by doing code - and you can do it in your browser. You need to sign up for these (all free), so the system can track your progress and reputation.

* [http://rubeque.com/problems](http://rubeque.com/problems)
* [http://rubykoans.com/](http://rubykoans.com/) (There is a proper local version, which is a proper TDD emulation with 180 errors)
* [http://rubymonk.com/](http://rubymonk.com/)

Check them out, as a newbie I'd definitely recommend them all.

### Dumpster diving in the Rails source - Matt P.

As a newcomer to rails, I was impressed that it knew that the plural of "person" is "people".  Then I wondered how it knew.  A bit of digging around in the source tree and I found [active_support/inflections.rb](https://github.com/rails/rails/blob/6c367a0d787705746f262d0bd5ad8c4f13a8c809/activesupport/lib/active_support/inflections.rb) -- and learned that an acceptable (albeit archaic) plural of the word "cow" is "kine".

### Mixins - a refactoring anti-pattern - Murray S.

This [http://blog.steveklabnik.com/posts/2012-05-07-mixins--a-refactoring-anti-pattern](http://blog.steveklabnik.com/posts/2012-05-07-mixins--a-refactoring-anti-pattern) was quite an interesting discussion about refactoring and complexity.

## Conferences

### Ruby Lugundum - Murray S.

[http://rulu.eu](http://rulu.eu)

The 2nd version of Ruby Lugundum (a 2 day conference in Lyon, France, end of June).  I didn't hear anything about their first one last year, I think it was a pretty small affair.  This year's looks more professional and interestingly it seems to have [a lineup](http://2012.rulu.eu/speakers/) that isn't full of the same old faces spouting the same old talks.  Might be worth going to, and it's only 80€.

## Text editing

### Tmux and the pasteboard - Mark S.

Do you use tmux? Do you use vim? Does trying to copy and paste between applications within tmux and other OS X apps annoy you? Read [this post](http://robots.thoughtbot.com/post/19398560514/how-to-copy-and-paste-with-tmux-on-mac-os-x) by Thoughbot to minimise a small, but daily frustration. I ignored the last bit about the shell script for tmux buffers and instead used [this Unix StackExchange answer](http://unix.stackexchange.com/a/32451).

If you are interested in the details of why the pasteboard is not accessible from within tmux on OS X read [this](https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard/blob/master/README.md).

## Text editing for the less discerning developer

### Sublime Text 2 - Command-Line Integration That Doesn't Enrage My Inner Pedant - Matt F.

Risking public shame, Matt F. not only shared that he is a Sublime Text user, but also some command line tips for other Sublime users:

I started using Sublime Text 2 during Blackadder's little vacation last week whilst Krispy, a.k.a. Chris C, a.k.a. *not* the creator of 'The X-Files' and I groped our way through AppsForGood.  (I'm pleased to report the groping has continued this week vis a vis the Unboxed Website, albeit on a solo basis...

Sublime Text 2 ships with a command line tool named `subl` to work with files [on the command line](http://www.sublimetext.com/docs/2/osx_command_line.html).  For some reason continually typing `subl` enraged my inner pedant. I wanted my invocation of the application to be more meaningful to me as the invoker.

I therefore used the mystifyingly-popular knowledge trough called 'the internet' to discover this - [https://gist.github.com/1236170](https://gist.github.com/1236170).  Now I can invoke sublime on the command line using `sublime` instead of `subl`. A few more keystrokes are required but importantly less mental kittens die.

## Know your history

### Computer Science - History Is Important - Matt F.

Julian Simpson (a.k.a. [@builddoctor](https://twitter.com/builddoctor)) tweeted a link to this web log post a while back - [http://www.blackliszt.com/2012/03/computer-history.html](http://www.blackliszt.com/2012/03/computer-history.html). I've only just got round to reading it though.  The post argues that software is often a predominantly a-historical discipline which is to its detriment. This is interesting to me because on every new project I work on, I feel I forget to remember the lessons I learnt from the mistakes I made during previous projects.

## Attila

As always, the ever popular Attila section. This week he regales us with Bundler tips, issues with Readability, Alfred searches and the final word on LESS. Like the Macalope, you can wait till the end of the week to read what he has to say, or for the impatient, subscribe to developers@ubxd.com for the early edition.

### Bundler updates

So you have been using .rvmrc or .rbenv-version files to keep track of what version of Ruby is required for your project, right? Well, maybe there's an even better way coming:

Ruby version dependencies straight in your Gemfile. Coming soon to a Terminal near you:

    source 'http://rubygems.org'

    ruby '1.9.3'
    gem  'rails', '3.2.3'


You can install a prerelease version of Bundler already today:
`gem install bundler --pre`

There's an article on the Heroku blog about this, make sure to read [http://blog.heroku.com/archives/2012/5/9/multiple_ruby_version_support_on_heroku](http://blog.heroku.com/archives/2012/5/9/multiple_ruby_version_support_on_heroku)
I'm looking forward to RVM and RBenv to hook into these if possible and provide us a seamless switch between different projects that use different versions of Ruby.

## Readability Article Publishing Guidelines

It has come to my attention that we might need to shape our markup-fu a little bit. When I tried to save Andrew's recent article from the Unboxed Blog to my Readability account I noticed that the artcle parsing was not quite successful, more precisely Readability picked up "Unboxed Blog" as the article title as opposed to "Code maintainability - is it a test thing?". Find the example [here](http://www.readability.com/articles/g9qlxgpx).

After a tiny bit of googling I found this [helpful article](http://www.readability.com/publishers/guidelines) on the Readability website that has reasonable markup crafting suggestions to everybody.

Note that it is not only intended to be used for Readability but the suggestions there are quite reasonable for every day markup crafting. I guess my main point is that rather than just throwing a bunch of `<div>s` onto the browsers, it has become quite clear that how much additional functionality and data you can get by crafting your markup right.

## Alfred custom searches

By now you probably know that you can add customised searches to Alfred. I've been using these for a while and thought that maybe others would make good use of them too:

    Search title: Search Github for
    URL: http://github.com/search?q={query}
    keyword: gh

    Search URL: https://www.ruby-toolbox.com/search?utf8=%E2%9C%93&q={query}
    title: Search The Ruby Toolbox for
    keyword: rtb

    Search URL: http://rubygems.org/search?utf8=%E2%9C%93&query={query}
    title: Search RubyGems for
    keyword: gem

In order to add them, go to Alfred's preferences, look for "Custom Searches" in the sidebar and add them if you want. Happy searching!

## Less is more. Really.

This one is just for trolling Will and maybe as a response to his latest rants on Less last week. I don't know at this point if it's worth coming up with yet another debate around this subject, I've had my examples in the past and I started to think that not every single tool fits every person. Less, just like anything else might be your thing or might not be.

However, I think that the same way just like any other tool can be used wisely and could provide huge benefits to your project.


## Diversions

### Wolfenstein 3D - Rich A.

Since we live in a glorious new age where we <strike>no longer have to wait for code to compile</strike> have to wait for tests to run, Rich A. wrote in with news of a web-based [Wolfenstein 3D](http://3d.wolfenstein.com/) to keep you busy while cucumber is cucumbering.
