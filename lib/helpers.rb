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
end
