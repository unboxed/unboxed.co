require 'spec_helper'
require 'helpers'

RSpec.describe Helpers do
  include Helpers

  describe 'is_matching_link?' do
    it 'does not match when current url is not the same link or a child link' do
      expect(is_matching_link?('/blog', '/project-stories')).to be_falsey
    end

    it 'matches when the current url is the same link' do
      expect(is_matching_link?('/blog', '/blog')).to be_truthy
      expect(is_matching_link?('/project-stories', '/project-stories')).to be_truthy
    end

    it 'matches when the current url a child of the link' do
      expect(is_matching_link?('/blog', '/blog/webinar-speed-up-problem-and-customer-validation')).to be_truthy
      expect(is_matching_link?('/project-stories', '/project-stories/sh24')).to be_truthy
    end
  end

  describe 'atom_id' do
    let(:date) { Time.parse('2014-10-29 11:40:32') }
    let(:slug) { 'i-like-hats' }
    let(:article) { double("BlogArtcile", date: date, slug: slug) }

    it 'includes the website name, the short timestamp of the article, the article slug' do
      expect(atom_id(article)).to eq "tag:unboxed.co,2014-10-29:i-like-hats"
    end
  end

  describe 'articles_by_author' do
    let(:article_1) { double("BlogArtcile", data: double('data', authors: ['Brian de la Smith'])) }
    let(:article_2) { double("BlogArtcile", data: double('data', authors: ['Brian DE LA Smith', 'Simone Grant'])) }
    let(:article_3) { double("BlogArtcile", data: double('data', authors: ['Aisling Noble'])) }
    let(:blog) { double('blog', articles: [article_1, article_2, article_3]) }
    before do
      allow(self).to receive(:blog).with(:blog).and_return(blog)
    end

    it 'includes articles written by the supplied author if they are the sole author' do
      expect(articles_by_author('Aisling Noble')).to eq [article_3]
    end

    it 'includes articles written by the supplied author if they are one of several authors' do
      expect(articles_by_author('Simone Grant')).to eq [article_2]
    end

    it 'includes articles written by the supplied author even if the case is wrong' do
      expect(articles_by_author('Brian de la Smith')).to eq [article_1, article_2]
    end
  end
end

