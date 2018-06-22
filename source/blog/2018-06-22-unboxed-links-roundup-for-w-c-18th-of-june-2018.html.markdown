---
weekly_roundup: true
title: "Roundup: progressive enhancement, a security vulnerability, Go 
concurrency, YAML constraints"
date: '2018-06-22 14:30:00 BST'
authors:
  - 'Neil van Beinum'
tags: # (Delete as appropriate)
- Culture

---

## Progressive enhancement: it's still your best option - [Murray S](/people#murray-steele)

https://alistapart.com/article/the-slow-death-of-internet-explorer-and-future-of-progressive-enhancement

Even though Microsoft Edge is available, which by all reports is a pretty good
browser, there are people who still use IE which ... isn't.  The problem with
that is if you have any traffic to those users you can't use many fancy new 
features if you want them to be able to use the site.  At time of writing IE 
globally accounts for around 3% of traffic, so many feel it's no great loss to
ignore those users.  An alternative is to provide polyfills that provide the
missing features, at the expense of asking old browsers to perform even more
work and degrading performance further.  Neither of these options seem like the
right thing to do and this article explores what modern progressive enhancement
looks like.  It's a mantra worth repeating: the experience of using your site
doesn't have to be exactly the same in all browsers - as long as the user can do
what they need to do, they'll forgive us a few lofi pages with a white 
background, Times New Roman text and purple and blue links.


## Rails Asset Pipeline Directory Traversal Vulnerability (CVE-2018-3760) - [Elena T](/people#elena-tanasoiu)

https://blog.heroku.com/rails-asset-pipeline-vulnerability

The low-down on what this vulnerability is and how to go about fixing it. 


## Learning Go's concurrency through illustrations - [Elena T](/people#elena-tanasoiu)

https://medium.com/@trevor4e/learning-gos-concurrency-through-illustrations-8c4aff603b3

An introduction to Go's concurrency model. 


## YAML: probably not so great after all - [Elena T](/people#elena-tanasoiu)

https://arp242.net/weblog/yaml_probably_not_so_great_after_all.html

On the shortcomings and constraints of using YAML. 

## Track of the Week - [Elena T](/people#elena-tanasoiu)

[The Paparuda](https://upload.wikimedia.org/wikipedia/commons/3/37/Taniec_Perperuny.jpg) is an ancient Romanian rain ritual performed either in the Spring or in times of severe drought. Wearing a dress of knitted vines, a dancing girl is accompanied through the village by singing, shouting locals' intent on securing fertility for the season ahead. "Paparuda" derives from the name of [a Thracian deity](https://en.wikipedia.org/wiki/Dodola).

The video shows a Romanian peasant woman wanting to perform this rain ritual, to the dismay of her husband.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Bmle3H-Oi8k" frameborder="0" allowfullscreen></iframe>
[Via Dacă - Paparuda](https://www.youtube.com/watch?v=Bmle3H-Oi8k)
