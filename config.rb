set :relative_links, true
set :layout, 'application'
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, autolink: true, smartypants: true, underline: true

activate :blog do |blog|
  blog.layout = 'blog_article'
  blog.prefix = 'blog'
  blog.taglink = "{tag}.html"
  blog.permalink = "{title}.html"
  blog.tag_template = 'blog/tag.html'
  blog.new_article_template = 'templates/blog_article.md'
end
activate :similar, algorithm: :related_blog_articles
activate :directory_indexes

configure :development do
  activate :livereload
end

require 'lib/helpers'
helpers Helpers

data.people.each do |person|
  proxy "blog/author/#{person.short_name}.html", "blog_author_grid.html",
    locals: { author_name: person.name }, ignore: true
end

ignore '/templates/*'
ignore '/partials/*'
ignore '/**/README.md'

page "/blog/feed.xml", layout: false
page "/blog/feed.rss", layout: false

configure :build do
  activate :minify_css
  activate :minify_javascript
end

after_build do |builder|
  builder.source_paths << File.dirname(__FILE__)
  builder.copy_file('data/_redirects', 'build/_redirects')
end
