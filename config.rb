require 'slim'
Slim::Engine.disable_option_validator! # https://github.com/middleman/middleman/issues/1514

set :relative_links, true
set :layout, 'application'
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, autolink: true, smartypants: true

activate :blog do |blog|
  blog.prefix = 'blog'
  blog.permalink = "{title}.html"
  blog.new_article_template = "source/templates/blog.md"
end

activate :directory_indexes
activate :relative_assets

configure :development do
  activate :livereload
end

page 'blog/*'
ignore '/templates/*'
ignore '/**/README.md'

configure :build do
  activate :minify_css
  activate :minify_javascript
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
