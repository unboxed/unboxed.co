---
layout: 'blog'
title: '<%= @title %>'
date: '<%= @date %>'
disqus_identifier: '<%= SecureRandom.uuid %>'
tags: # (Delete as appropiate) <%= "\n" + File.read('./data/tags.yml') %>
---
