require 'slim'

ready do
  data.tags.each do |tag|
    proxy "/#{tag.url}.html", '/templates/grid.html', locals: { query: { :tags.include => tag.url } }
  end
end

proxy '/index.html', '/templates/grid.html', locals: { query: {} }
ignore '/templates/*'

activate :blog do |blog|
  # set options on blog
end

set :relative_links, true

configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
