# Blog posts

Creating a blog post consists of four main steps:

1. [Making the file](#making-the-file)
2. [Copying in the template](#copying-in-the-template)
3. [Writing the blog post](#writing-the-blog-post)
4. [Saving the file](#saving-the-file)

## Making the file

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

If this folder structure does not already exist for the year or month, it can easily be created in GitHub:

![screen shot 2015-07-10 at 11 47 24](https://cloud.githubusercontent.com/assets/885223/8617206/7d2a7c0c-26f9-11e5-9ab6-9429de98ad0c.png)

![screen shot 2015-07-10 at 11 47 38](https://cloud.githubusercontent.com/assets/885223/8617207/7d587dbe-26f9-11e5-839c-2c9a002f225e.png)

then type `/`

![screen shot 2015-07-10 at 11 47 52](https://cloud.githubusercontent.com/assets/885223/8617208/7d722b7e-26f9-11e5-88ab-3584f753f1f3.png)

### Naming the file

The filename will be the URL of that blog post, e.g. the file `url-for-blog-post.markdown` will be visible at http://example.com/blog/url-for-blog-post

## Copying in the template

The blog template contains some required information such as the published date, tags and the page title. Copy the latest blog template from the file at [/source/templates/blog.markdown](https://raw.githubusercontent.com/unboxed/ubxd_web_refresh/master/source/templates/blog.markdown)

Replace:
- `<%= @title %>` with the title you wish to show for the browser window.
- `<%= @date %>` with today's date.
- `published_date: YYYY-MM-DD HH:MM:SS UTC` with the date you wish the blog post to be published.

## Writing the blog post

Blog posts use markdown (see [markdown basics reference](https://help.github.com/articles/markdown-basics/)). You can preview the blog post before saving the file to check headings, content and embedded content are what you expect it to be.

## Saving the file

To save the file, you need to commit the change. You can either "commit directly to the master branch" which will be on production within a few minutes, or "create a new branch" to review your changes and ask other people for feedback before it goes to production.

It's recommended to create a pull request for every change you make to the website:

![screen shot 2015-07-10 at 11 58 50](https://cloud.githubusercontent.com/assets/885223/8617396/490c9e8a-26fb-11e5-8899-a0516f1b1d79.png)

If you create a pull request, please name it with the convention of `blog/<name-of-blog>` where `<name-of-blog>` should be subsituted.

Press "Propose new file" which will redirect you to a page to "open a pull request". Finally press "Create pull request" and share the link to those who want to give you feedback
