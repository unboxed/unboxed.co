set :relative_links, true
set :layout, 'application'
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, autolink: true, smartypants: true

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
activate :relative_assets

configure :development do
  activate :livereload
end

helpers do
  def retina_src(path)
    return %(src="#{path}") if path =~ /^http(s)?/
    retina_path = path.gsub(/\./, '@2x.')
    %(src="#{path}" srcset="#{retina_path} 2x")
  end

  def render_markdown(text)
    Markdown.new(text).to_html
  end

  def get_author(article_author)
    data.authors.detect { |author| author["name"].downcase == article_author.downcase }
  end
end

ignore '/templates/*'
ignore '/partials/*'
ignore '/**/README.md'

configure :build do
  activate :minify_css
  activate :minify_javascript
end

after_build do |builder|
  builder.source_paths << File.dirname(__FILE__)
  builder.copy_file('data/_redirects', 'build/_redirects')
end
