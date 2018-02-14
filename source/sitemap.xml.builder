ignores = %w[
  404.html
  style-guide/index.html
]

filter = proc do |page|
  next unless page.source_file.match(%r{\.(html|erb)})
  next if ignores.include?(page.destination_path)

  true
end

order = proc do |page|
  page.destination_path.gsub(%r{/index.html\z}, "")
end

xml.instruct! :xml, version: "1.0", encoding: "UTF-8"
xml.urlset xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9" do
  sitemap.resources.find_all(&filter).sort_by(&order).each do |page|
    path = page.destination_path.gsub(%r{/index.html\z}, "")

    xml.url do
      xml.loc "https://unboxed.co/#{path}"
    end
  end
end
