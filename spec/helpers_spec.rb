require './lib/helpers.rb'
include Helpers

describe Helpers do
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
end

