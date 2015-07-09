---
title: Blog post
date: 2015-07-07 08:57:56 UTC
published_date: 2015-07-07 12:00:00 UTC
tags:
  - "blog"
---

# UBXD Blog

## Middleman info

Created with `middleman article "Blog post" -b blog`

Uses `sources/templates/blog.markdown` as template:

```
---
title: <%= @title %>
published_date: <%= @date %>
tags:
  - "blog"
---

# UBXD Blog
```

Updating blog post from GitHub
