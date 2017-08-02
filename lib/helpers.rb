require 'date'
require 'time'
require './lib/article_info'

module Helpers
  def retina_srcset(path)
    return %(src="#{path}") if path =~ /^http(s)?/
    "#{path.gsub(/\./, '@2x.')} 2x"
  end

  def site_nav_link(link_text, href, options = {})
    options[:class] ||= ''
    options[:class] << ' site-navigation__link'
    options[:class] << '--active' if is_matching_link?(href, current_page.url)
    link_to(link_text, href, options)
  end

  def is_matching_link?(href, current_url)
    href == current_url.match(/^(\/[^\/]*).*$/)[1]
  end

  def page_data(key)
    if content_for?(key)
      yield_content(key)
    elsif current_page.data[key]
      current_page.data[key]
    end
  end

  def atom_id(article)
    "tag:unboxed.co,#{article.date.to_time.strftime('%Y-%m-%d')}:#{article.slug}"
  end

  def add_atom_feed_to_head
    content_for(:head) { feed_tag :atom, "#{blog(:blog).options.prefix.to_s}/feed.xml", title: "The Unboxed Blog" }
  end

  def image_url(source)
    URI.join("http://unboxed.co/", image_path(source))
  end

  def article_info(people, page)
    ArticleInfo.new(people, page)
  end

  def articles_by_author(author_name)
    blog(:blog).articles.select { |article| article.data.authors.map(&:downcase).include? author_name.downcase }
  end

  def find_person_by_short_name(author_short_name)
    data.people.find { |person| person.short_name.downcase == author_short_name.downcase }
  end

  def file_size_in_kilobytes(file_path)
    (File.open(file_path).size.to_f / 1024.0).round
  end

  def delimit_number_with_commas(number)
    number.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
  end

  def pretty_format_file_size_from_path(file_path)
    delimit_number_with_commas(file_size_in_kilobytes(file_path))
  end
end
