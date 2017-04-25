require 'spec_helper'
require 'article_info'

class PageData
  attr_reader :authors

  def initialize(authors: nil)
    @authors = authors
  end
end

class PersonData
  attr_reader :name

  def initialize(name: nil)
    @name = name
  end
end

RSpec.describe ArticleInfo do
  describe "#authors" do
    it "returns a collection with the author and coauthors" do
      johnny = PersonData.new(name: "Johnny")
      jane = PersonData.new(name: "Jane")
      page = PageData.new(authors: ["Johnny", "Jane", "Jimmy"])
      people = [jane, johnny]

      article = described_class.new(people, page)

      expect(article.authors.map(&:name)).to eq ["Johnny", "Jane", "Jimmy"]
    end
  end

  describe "#current_authors" do
    it "returns authors excluding any who are not currently in people" do
      johnny = PersonData.new(name: "Johnny")
      page = PageData.new(authors: ["Johnny", "Jane", "Jimmy"])
      people = [johnny]

      article = described_class.new(people, page)

      expect(article.current_authors).to eq [johnny]
    end
  end

  describe "#author_names" do
    it "returns the author names in a comma separated string" do
      johnny = PersonData.new(name: "Johnny")
      jane = PersonData.new(name: "Jane")
      page = PageData.new(authors: ["Johnny", "Jane", "Jimmy"])
      people = [jane, johnny]

      article = described_class.new(people, page)

      expect(article.author_names).to eq "Johnny, Jane, Jimmy"
    end
  end
end
