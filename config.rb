require 'slim'

set :relative_links, true
set :layout, 'application'
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: true

activate :blog do |blog|
  blog.name = 'blog'
  blog.prefix = 'blog'
  blog.sources = "/{year}/{month}/{title}.html"
  blog.permalink = "{title}.html"
  blog.new_article_template = "source/templates/blog.markdown"
end

activate :blog do |blog|
  blog.name = 'news'
  blog.prefix = 'news'
  blog.sources = "/{year}/{month}/{title}.html"
  blog.permalink = "{title}.html"
  blog.new_article_template = "source/templates/news.markdown"
end

activate :directory_indexes
activate :relative_assets

configure :development do
  activate :livereload
end

page 'blog/*'
page 'news/*'

ready do
  data.tags.each do |tag|
    proxy "/#{tag.url}.html", '/templates/grid.html', locals: { query: { :tags.include => tag.url } }
  end

  data.people.each do |person|
    proxy "/people/#{person.name.gsub(' ', '-').downcase}", '/templates/person.html', locals: { person: person }
  end
end

proxy '/index.html', '/templates/grid.html', locals: { query: {} }
ignore '/templates/*'
ignore '/**/README.md'

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
