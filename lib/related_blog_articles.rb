class RelatedBlogArticles
  def initialize(current, other)
    @current = current
    @other = other
  end

  def weight
    author_weight + tag_weight
  end

  def author_weight
    if current_authors.empty? && other_authors.empty?
      0.0
    else
      (current_authors & other_authors).size.to_f / current_authors.size.to_f
    end
  end

  def tag_weight
    if @current.tags.nil? || @current.tags.empty? || @other.tags.nil? || @other.tags.empty?
      0.0
    else
      (@current.tags & @other.tags).size.to_f / @current.tags.size.to_f
    end
  end

  private

  attr_reader(
    :current,
    :other
  )

  def current_authors
    current.authors || []
  end

  def other_authors
    other.authors || []
  end
end

