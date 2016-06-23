xml.instruct! :xml, :version => "1.0"
xml.feed "xmlns" => "http://www.w3.org/2005/Atom", "xml:lang" => "en-GB" do
  site_url = "http://unboxed.co/"
  xml.title "News from Unboxed"
  xml.subtitle "Ruby on rails, Agile, Scrum and other life changing topics."
  xml.id URI.join(site_url, blog(:news).options.prefix.to_s)
  xml.link "href" => URI.join(site_url, blog(:news).options.prefix.to_s)
  xml.link "href" => URI.join(site_url, current_page.path), "rel" => "self"
  xml.generator "ubxd_web_refresh", 'uri' => 'https://github.com/unboxed/ubxd_web_refresh'

  articles = blog(:news).articles[0..50]
  xml.updated(articles.first.date.to_time.iso8601) unless articles.empty?

  articles.each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => URI.join(site_url, article.url)
      xml.id atom_id(article)
      xml.published article.date.to_time.iso8601
      xml.updated File.mtime(article.source_file).iso8601
      xml.content article.body, "type" => "html"
    end
  end
end
