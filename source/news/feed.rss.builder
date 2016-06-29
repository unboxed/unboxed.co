xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0", "xmlns:atom" => "http://www.w3.org/2005/Atom" do
  xml.channel do
    site_url = "http://unboxed.co/"
    xml.title "News from Unboxed"
    xml.description "Ruby on rails, Agile, Scrum and other life changing topics."
    xml.link URI.join(site_url, blog(:news).options.prefix.to_s)
    xml.language "en-GB"
    xml.generator 'https://github.com/unboxed/ubxd_web_refresh'

    articles = blog(:news).articles[0..50]
    xml.pubDate articles.first.date.to_time.rfc822 unless articles.empty?

    xml.tag! 'atom:link', 'href' => URI.join(site_url, current_page.path), 'rel' => 'self', 'type' => 'application/rss+xml'

    articles.each do |article|
      xml.item do
        xml.title article.title
        xml.description article.body
        xml.tags article.tags
        xml.pubDate article.date.to_time.rfc822
        xml.link URI.join(site_url, article.url)
        xml.guid atom_id(article), "isPermaLink" => "false"
      end
    end
  end
end
