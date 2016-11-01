require './lib/former_employee'

class ArticleInfo
  def initialize(people, page)
    @people = people
    @page = page
  end

  def authors
    @_authors ||= page_authors.map do |author_name|
      find_person(author_name) || FormerEmployee.new(author_name)
    end
  end

  def current_authors
    @_current_authors ||= page_authors.map do |author_name|
      find_person(author_name)
    end.compact
  end

  def author_names
    authors.map(&:name).join(", ")
  end

  private

  attr_reader :page, :people

  def coauthors
    page.coauthors || []
  end

  def page_authors
    @_page_authors ||= coauthors.unshift(page.author)
  end

  def find_person(author_name)
    people.find { |person| person.name.downcase == author_name.downcase }
  end
end
