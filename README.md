# UBXD

## Deployments

Using [middleman-gh-pages](https://github.com/neo/middleman-gh-pages) gem, simply do:

```
rake build publish
```

## Generating articles

Using [middleman-blog](https://middlemanapp.com/basics/blogging/). The following commands will create an article (e.g. `source/news/2015-07-07-news-article.html.markdown`) using a set template, which you can then open up and edit.

### Blog posts

```
middleman article "Title" -b blog
```

### News articles

```
middleman article "Title" -b news
```
