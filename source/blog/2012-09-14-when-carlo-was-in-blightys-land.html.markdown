---
layout: "blog_article"
weekly_roundup: true
date: "2012-09-14 15:59:00 UTC"
published: true
title: "When Carlo was in Blighty's Land"
author: "Carlo Kruger"
tags:
  - Rails
---

This week's Dev newsletter comes to you on behalf of Bender, BA Lounge wifi, a pint of wagamama's ramen and the number 7.

Murray kicks off with an interesting article about how people coming down on rails vs. node have it all wrong.  It starts out a bit ranty and seems a little defensive; he calls out weak arguments from the other side, but makes plenty weak arguments of his own.  Still, the latter half of the article is quite good as it points out that ruby has still plenty of speed in it and there are approaches to programming in multi-core that mean it's only going to get faster.

http://www.unlimitednovelty.com/2012/03/why-critics-of-rails-have-it-all-wrong.html

##[Rumble in Jungle](http://blog.railsrumble.com/2012/09/13/registration-dates-competition-details/)

Rails Rumble 2012 has been announced, if you're into this sort of thing the team registration is open from 1st to 7th October with the competition happening on the 13th and 14th.

Tom Ten Thij presents a two fisted wonder with:

##Ruby and it's exit command (what is it good for?):
http://www.bigfastblog.com/ruby-exit-exit-systemexit-and-at_exit-blunder

And and article from Charles Nutter about how to avoid hashes when using Ruby (which sometimes feels like a contradiction!):

http://blog.headius.com/2012/09/avoiding-hash-lookups-in-ruby.html

Our esteemed leader has contributed a link to a tool monitoring your sitemap links:

##Simple Site Checker is a command line tool that allows you to run a check over the links in your XML sitemap.

http://ilian.i-n-i.org/simple-site-checker/

And if you are building an API (Jolyon@kweekweek) HTTP Status Codes Site
During the development of Simple Site Checker he realised that it would be useful for test purposes if there is a website returning all possible HTTP status codes. Thanks to Google App Engine and webapp2 framework building such website was a piece of cake.

The site can be found at

http://httpstatuscodes.appspot.com.

The beleaguered Mr Peperell contributes:

In the same vein as RailsCasts is the site VimCasts.org. The episode I found which drew my attention to this site is the episode
http://vimcasts.org/episodes/vimgolf-prime-numbers/ .

This describes one of the entries (an interesting one, rather than the winning one) for a vimgolf.com challenge entitled "How to insert the first 100 prime numbers".
[editor: seriously? can't they use a real language?]

His second link is merely to give prominence to a blog post from a couple of years ago detailing a way to integrate google docs with the editor : http://blog.milford.io/2010/06/sweet-use-vim-with-google-docs/

Our man at MBM, the awesome, the only, Mr Pawlyn presents:

##Jenkins and automated deployment for Rails

I failed to find a simple step by step guide to setting up automated deployments for Jenkins, so here are the list of steps that worked for us:

1) Install the Jenkins plugin [Post build task](  https://wiki.jenkins-ci.org/display/JENKINS/Post+build+task) (currently at release 1.8) and restart Jenkins

2) For the project that you want to deploy automatically, go to the Jenkins config and add the post build action 'Post build task'

3) If building multiple project branches, click 'Add' and specify the log text that will trigger a deployment. eg '(origin/development)' if you want to deploy after a branch named 'development' has successfully completed running tests

4) In the script box, add 'bash -l -e jenkins_deploy.sh'. This script should be checked into the root of your Rails app. See example below

5) Check the box 'Run script only if all previous steps were successful' if you only want to deploy when all tests pass and save the config

6) Add the Jenkins user's public key to the file ~/.ssh/authorized_keys for the user account on the server where the deployment is made

7)  Bada bing, bada boom, it should all work. If not, logon to the Jenkins server and run the jenkins_deploy.sh script manually to troubleshoot

The jenkins_deploy.sh should be something like:

	  eval `ssh-agent -s`
	  ssh-add
	  rvm use ruby-1.9.3-p194@YOUR_APP_NAME
	  bundle exec cap staging deploy:migrations BRANCH=development

And finally, from our man in Cape Town, Pawel offers a useful link to those of you jumping on the Twitter Bootstrap library for useful design snippets:

http://bootsnipp.com/

Till next time, keep your feet in the air and your head on the ground
