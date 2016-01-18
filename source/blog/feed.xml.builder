xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  site_url = "http://unboxed.co/"
  xml.title "The Unboxed Blog"
  xml.subtitle "Ruby on rails, Agile, Scrum and other life changing topics."
  xml.id URI.join(site_url, blog(:blog).options.prefix.to_s)
  xml.link "href" => URI.join(site_url, blog(:blog).options.prefix.to_s)
  xml.link "href" => URI.join(site_url, current_page.path), "rel" => "self"
  xml.updated(blog(:blog).articles.first.date.to_time.iso8601) unless blog(:blog).articles.empty?

  blog(:blog).articles[0..50].each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => URI.join(site_url, article.url)
      xml.id atom_id(article)
      xml.published article.date.to_time.iso8601
      xml.updated File.mtime(article.source_file).iso8601
      xml.author do
        author = data.people.detect { |person| person.name.downcase == article.data.author.downcase }
        if author
          xml.name author.name
          xml.uri "https://unboxedconsulting.com/people/#{author.short_name}"
        else
          xml.name article.data.author
        end
      end
      # xml.summary article.summary, "type" => "html"
      xml.content article.body, "type" => "html"
    end
  end
end
