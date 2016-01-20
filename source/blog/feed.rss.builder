xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    site_url = "http://unboxed.co/"
    xml.title "The Unboxed Blog"
    xml.description "Ruby on rails, Agile, Scrum and other life changing topics."
    xml.link URI.join(site_url, blog(:blog).options.prefix.to_s)

    blog(:blog).articles[0..50].each do |article|
      xml.item do

        xml.title article.title
        xml.description article.body
        xml.date article.date.to_time.rfc822
        xml.link URI.join(site_url, article.url)
        xml.guid atom_id(article)

        author = data.people.detect { |person| person.name.downcase == article.data.author.downcase }
        if author
          xml.creator author.name
          xml.tag! "dc:creator", author.name
        else
          xml.creator article.data.author
          xml.tag! "dc:creator", article.data.author
        end

        xml.tag! "dc:date", article.date.to_time.rfc822
      end
    end
  end
end
