---
title: News article
date: 2015-07-07 08:58:14 UTC
tags:
  - "news"
---

# UBXD News

Created with `middleman article "News article" -b news`

Uses `sources/templates/news.markdown` as template:

    ---
    title: <%= @title %>
    date: <%= @date %>
    tags:
      - "news"
    ---

    # UBXD News

Although this is not quite GitHub flavoured markdown :(
