source 'https://rubygems.org'

gem 'builder'
gem 'middleman'
gem 'middleman-blog'
gem 'middleman-blog-similar'
gem 'middleman-compass'
gem 'middleman-sprockets'
gem 'middleman-syntax'
gem 'redcarpet'
# Middleman 4 dropped support for `@import 'folder/*'` in sass
# these requires make sure we retain that function
gem 'sass', '~> 3.4'
gem 'sass-globbing', '~> 1.1'

gem 'mini_racer'

group :development do
  gem 'middleman-livereload'
end

group :development, :test do
  gem 'pry'
end

group :test do
  gem 'rspec'
end
