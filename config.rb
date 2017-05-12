set :relative_links, true
set :layout, 'application'
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, autolink: true, smartypants: true, underline: true

require 'lib/middleman_blog_more_dynamic_custom_pages'
require 'lib/article_info'

# blog
activate :blog do |blog|
  blog.name = 'blog'
  blog.layout = 'blog_article'
  blog.prefix = 'blog'
  blog.taglink = "{tag}.html"
  blog.permalink = "{title}.html"
  blog.tag_template = 'blog/tag.html'
  blog.new_article_template = 'templates/blog_article.md'
  blog.custom_collections = {
    author: {
      link: 'author/{author}.html',
      template: 'blog/author.html',
      filter: -> (articles) do
        articles_with_authors = articles.select {|a| a.metadata[:page]['authors'] }
        articles_by_author = {}
        articles_with_authors.each do |article|
          ai = ArticleInfo.new(data.people, article.data)
          ai.authors.reject { |author| author.is_a? NonEmployee }.each do |author|
            articles_by_author[author.short_name] ||= []
            articles_by_author[author.short_name] << article
          end
        end
        articles_by_author
      end
    }
  }
  blog.paginate = true
  blog.per_page = 30
  blog.page_link = 'page-{num}'
end

# news
activate :blog do |blog|
  blog.name = 'news'
  blog.layout = 'news_article'
  blog.prefix = 'news'
  blog.permalink = "{title}.html"
  blog.new_article_template = 'templates/news_article.md'
  blog.paginate = true
  blog.per_page = 30
  blog.page_link = 'page-{num}'
end

activate :similar, algorithm: :related_blog_articles
activate :directory_indexes

activate :sitemap, hostname: "https://unboxed.co"

activate :syntax

configure :development do
  activate :livereload
end

require 'lib/helpers'
helpers Helpers

ignore '/templates/*'
ignore '/partials/*'
ignore '/**/README.md'

page "/blog/feed.xml", layout: false
page "/blog/feed.rss", layout: false

page "/news/feed.xml", layout: false
page "/news/feed.rss", layout: false

page "/404.html", directory_index: false

configure :build do
  activate :minify_css
  activate :minify_javascript
end

after_build do |builder|
  builder.source_paths << File.dirname(__FILE__)
  builder.copy_file('data/_redirects', 'build/_redirects')

  page_twos = sitemap.resources.select { |resource| resource.url =~ /\/page-2\/$/ }
  # The pagination doesn't generate /page-1/ urls, so put in redirects
  # for them that take you back to the "parent" (which contains the 1st page)
  builder.append_to_file('build/_redirects') do
    page_twos.map do |page_two|
      parent_url = page_two.url.gsub(/\/page-2\/$/, '/')
      page_one_url = page_two.url.gsub(/\/page-2\/$/, '/page-1/')
      "#{page_one_url}  #{parent_url}"
    end.join("\n")
  end
end
