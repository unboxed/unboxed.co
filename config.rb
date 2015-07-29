set :relative_links, true
set :layout, 'application'
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, autolink: true, smartypants: true

activate :directory_indexes
activate :relative_assets

configure :development do
  activate :livereload
end

helpers do
  def retina_src(path)
    retina_path = path.gsub(/\./, '@2x.')
    %(src="#{path}" srcset="#{retina_path} 2x")
  end

  def markdown(text)
    Markdown.new(text).to_html
  end
end

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
