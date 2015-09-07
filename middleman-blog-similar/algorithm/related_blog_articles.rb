require './lib/related_blog_articles'

class Middleman::Blog::Similar::Algorithm::RelatedBlogArticles < ::Middleman::Blog::Similar::Algorithm
  def similar_articles
    ::RelatedBlogArticles.sort(article, articles)
  end
end
