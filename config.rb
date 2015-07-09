require 'slim'

ready do
  data.tags.each do |tag|
    proxy "/#{tag.url}.html", '/templates/grid.html', locals: { query: { :tags.include => tag.url } }
  end
end

proxy '/index.html', '/templates/grid.html', locals: { query: {} }
ignore '/templates/*'
ignore '/**/README.md'

set :layout, 'application_layout'

activate :blog do |blog|
  blog.name = 'blog'
  blog.prefix = 'blog'
  blog.layout = 'article_layout'
  blog.sources = "/{year}/{month}/{day}/{title}.html"
  blog.permalink = "{title}.html"
  blog.new_article_template = "source/templates/blog.markdown"
end

activate :blog do |blog|
  blog.name = 'news'
  blog.prefix = 'news'
  blog.layout = 'article_layout'
  blog.sources = "/{year}/{month}/{day}/{title}.html"
  blog.permalink = "{title}.html"
  blog.new_article_template = "source/templates/news.markdown"
end

activate :directory_indexes
activate :relative_assets

page 'blog/*', directory_index: false
page 'news/*', directory_index: false

configure :development do
  activate :livereload
end

set :relative_links, true
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

configure :build do
  activate :minify_css
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = 'gh-pages'

  commit_message = 'Travis deployment'

  if ENV["TRAVIS_BUILD_NUMBER"] then
    commit_message += " (build \##{ENV["TRAVIS_BUILD_NUMBER"]})"
  end

  deploy.commit_message = commit_message
end
