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
end

