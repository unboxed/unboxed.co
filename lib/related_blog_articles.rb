class RelatedBlogArticles
  def initialize(current, other)
    @current = current
    @other = other
  end

  def weight
    author_weight + tag_weight
  end

  def author_weight
    if @current.author.nil? && @other.author.nil?
      0.0
    elsif @current.author == @other.author
      1.0
    else
      0.0
    end
  end

  def tag_weight
    if @current.tags.nil? || @current.tags.empty? || @other.tags.nil? || @other.tags.empty?
      0.0
    else
      (@current.tags & @other.tags).size.to_f / @current.tags.size.to_f
    end
  end
end

