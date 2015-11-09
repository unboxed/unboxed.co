module Helpers
  def retina_src(path)
    return %(src="#{path}") if path =~ /^http(s)?/
    retina_path = path.gsub(/\./, '@2x.')
    %(src="#{path}" srcset="#{retina_path} 2x")
  end

  def site_nav_link(link_text, href, options = {})
    options[:class] ||= 'site-navigation__link'
    options[:class] << '--active' if is_matching_link?(href, current_page.url)
    link_to(link_text, href, options)
  end

  def is_matching_link?(href, current_url)
    href == current_url.match(/^(\/[^\/]*).*$/)[1]
  end
end
