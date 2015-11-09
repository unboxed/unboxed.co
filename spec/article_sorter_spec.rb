require './lib/related_blog_articles.rb'

class BlogData
  attr_reader :author, :tags

  def initialize(author: nil, tags: nil)
    @author = author
    @tags = tags
  end

  def ==(other)
    self.author == other.author && self.tags == other.tags
  end
end

describe RelatedBlogArticles do
  describe '.weight' do
    describe 'authors' do
      it 'has the maximum author weighting when authors are the same' do
        current_article = BlogData.new(author: 'A', tags: [])
        other_article = BlogData.new(author: 'A', tags: [])
        expect(described_class.new(current_article, other_article).weight).to eq 1.0
      end

      it 'has no author weighting when authors are different' do
        current_article = BlogData.new(author: 'A', tags: [])
        other_article = BlogData.new(author: 'B', tags: [])
        expect(described_class.new(current_article, other_article).weight).to eq 0.0
      end

      it 'has no author weighting when there are no authors' do
        current_article = BlogData.new(tags: [])
        other_article = BlogData.new(tags: [])
        expect(described_class.new(current_article, other_article).weight).to eq 0.0
      end
    end

    describe 'tags' do
      it 'has the maximum tag weighting when tags are exactly the same' do
        current_article = BlogData.new(author: 'A', tags: ['A'])
        other_article = BlogData.new(author: 'B', tags: ['A'])
        expect(described_class.new(current_article, other_article).weight).to eq 1.0
      end

      it 'has a 50% tag weighting when tags are similar by a half' do
        current_article = BlogData.new(author: 'A', tags: ['A', 'B'])
        other_article = BlogData.new(author: 'B', tags: ['A', 'C'])
        expect(described_class.new(current_article, other_article).weight).to eq 0.5
      end

      it 'has no tag weighting when tags are different' do
        current_article = BlogData.new(author: 'A', tags: ['A'])
        other_article = BlogData.new(author: 'B', tags: ['B'])
        expect(described_class.new(current_article, other_article).weight).to eq 0.0
      end

      it 'has no tag weighting when tags are not present' do
        current_article = BlogData.new(author: 'A')
        other_article = BlogData.new(author: 'B', tags: [])
        expect(described_class.new(current_article, other_article).weight).to eq 0.0
      end
    end
  end
end
