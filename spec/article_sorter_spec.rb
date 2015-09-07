require './lib/related_blog_articles'

describe RelatedBlogArticles do
  it "can sort" do
    expect(described_class.sort("", [])).to eq []
  end
end
