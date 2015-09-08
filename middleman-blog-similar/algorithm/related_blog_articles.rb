require './lib/related_blog_articles'

class Middleman::Blog::Similar::Algorithm::RelatedBlogArticles < ::Middleman::Blog::Similar::Algorithm
  def distance(other)
    -::RelatedBlogArticles.new(article.data, other.data).weight
  end
end
