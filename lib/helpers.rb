module Helpers
  def retina_srcset(path)
    return %(src="#{path}") if path =~ /^http(s)?/
    "#{path.gsub(/\./, '@2x.')} 2x"
  end

  def site_nav_link(link_text, href, options = {})
    options[:class] ||= 'site-navigation__link'
    options[:class] << '--active' if is_matching_link?(href, current_page.url)
    link_to(link_text, href, options)
  end

  def is_matching_link?(href, current_url)
    href == current_url.match(/^(\/[^\/]*).*$/)[1]
  end

  def atom_id(article)
    "tag:unboxed.co,#{article.date.to_time.strftime('%Y-%m-%d')}:#{article.slug}"
  end

  def add_atom_feed_to_head
    content_for(:head) { feed_tag :atom, "#{blog.options.prefix.to_s}/feed.xml", title: "The Unboxed Blog" }
  end
end
