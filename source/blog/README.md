# Blog posts

To create a blog post, create the markdown file within [this folder structure](#file-and-folder-structure).

The [file name](#file-name) will be the URL (without the `.markdown` extension).

![](https://cloud.githubusercontent.com/assets/885223/8651131/fc532534-296e-11e5-8ffc-63c4c991cae8.png)

Copy in the following template and replace `Blog title` and `YYYY-MM-DD HH:MM:SS UTC` with your blog title and publishing date.

```
---
title: Blog title
date: YYYY-MM-DD HH:MM:SS UTC
tags:
  - blog
---
```

Blog posts are written in markdown. Click [here for some help](https://guides.github.com/features/mastering-markdown/#syntax).

---

### File name

The file name will be the URL of that blog post, e.g. the file `url-for-blog-post.markdown` will be visible at http://example.com/blog/url-for-blog-post (without the `.markdown` extension).

### File and folder structure

Blog posts are structured by years and months:

```
+-- blog
    +-- 2013
    +-- 2014
    +-- 2015
        +-- 01
            +-- url-for-blog-post.markdown
        +-- 02
        +-- 03
```

#### Creating a folder

If this folder structure does not already exist for the year or month, it can easily be created in GitHub:

![screen shot 2015-07-10 at 11 47 24](https://cloud.githubusercontent.com/assets/885223/8617206/7d2a7c0c-26f9-11e5-9ab6-9429de98ad0c.png)

![screen shot 2015-07-10 at 11 47 38](https://cloud.githubusercontent.com/assets/885223/8617207/7d587dbe-26f9-11e5-839c-2c9a002f225e.png)

then type `/`

![screen shot 2015-07-10 at 11 47 52](https://cloud.githubusercontent.com/assets/885223/8617208/7d722b7e-26f9-11e5-88ab-3584f753f1f3.png)
