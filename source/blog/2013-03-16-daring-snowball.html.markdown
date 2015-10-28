---
layout: "blog_article"
weekly_roundup: true
date: "2013-03-16 07:13:00 UTC"
published: true
title: "Daring Snowball"
author: "Pawel Janiak"
tags:
  - Rails
---

Long Error messages - Matt P
==
Error handling notwithstanding, usually developers try not to have our code generate error messages if we can at all help it. But turning that tenet on its head is [this stackoverflow post](http://codegolf.stackexchange.com/questions/1956/generate-the-longest-error-message-in-c) which explores a few attempts at generating intentionally long error messages.

Vagrant 1.1 available with a VMware Fusion provider - Attila
==
http://www.hashicorp.com/blog/vagrant-1-1-and-vmware.html

I have been waiting for the new Vagrant release for quite a while, mostly because of the hugely anticipated VMWare Fuison compatibility.
Yesterday HashiCorp have announced the new release, as soon as I've seen [the tweet](https://twitter.com/hashicorp/status/312235310564114434) I was thinking: Yesssss, finally I get to automate my Fusion VMs with ease.

Clicking through the link, reading through the announcement and BANG! Vagrant's still open source and free (as it should be), however if you want to [use it with Fusion](http://www.vagrantup.com/vmware), you'd need to pay a significant amount of money. A single seat costs $79 which means that provider is ironically more expensive than Fusion itself.
On top of that unfortunately it only supports Fusion version 5, which means people who are still using version 4 would need to upgrade to version 5 first, then purchase the Vagrant provider, which means that this solution can get quite expensive very quickly.

I understand that the development costs of Vargant shomehow need to be covered, but honestly I'm a little bit disappointed with the price itself.

On the other hand however, Vagrant core is still free and the provider interface is fully open source and [documented](http://docs.vagrantup.com/v2/plugins/providers.html), allowing for plugins to implement new providers.


Node 0.10.0 is out - Pawel
==

A new version of Node.js is out with a new [stable release](http://blog.nodejs.org/2013/03/11/node-v0-10-0-stable). Version 0.10.0 has quite a few API fixes and tweaks and general polishing up, and is geared towards ease of use, and backwards compatibility.

Rebuilding Rails - Pawel
==
It looks like the final version of the [Rebuilding Rails](http://rebuilding-rails.com/) book is out. The book guides you through building your own MVC ruby web framework. There are 2 free chapters available.
