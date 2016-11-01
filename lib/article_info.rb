require './lib/former_employee'

class ArticleInfo
  def initialize(people, page)
    @people = people
    @page = page
  end

  def authors
    @_authors ||= page_authors.map do |author_name|
      people_data = people.detect do |person|
        person.name.downcase == author_name.downcase
      end

      people_data || FormerEmployee.new(author_name)
    end
  end

  def current_authors
    @_current_authors ||= page_authors.map do |author_name|
      people.detect do |person|
        person.name.downcase == author_name.downcase
      end
    end.compact
  end

  private

  attr_reader :page, :people

  def coauthors
    page.coauthors || []
  end

  def page_authors
    @_page_authors ||= coauthors.unshift(page.author)
  end
end
