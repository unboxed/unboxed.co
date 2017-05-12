require 'middleman-blog/custom_pages'

module MoreDynamicCustomPages
  def initialize(property, app, controller, options)
    super
    @filter = options[:filter]
  end

  def manipulate_resource_list(resources)
    if @filter
      articles_by_property = @filter.call(@blog_data.articles)
      resources + articles_by_property.map do |property_value, articles|
        build_resource(link(property_value), property_value, articles)
      end
    else
      super
    end
  end
end

Middleman::Blog::CustomPages.send(:prepend, MoreDynamicCustomPages)

require 'middleman-blog/extension'

module AllowPaginatingCustomPages
  def after_configuration
    if options.custom_collections && options.paginate
      options.paginate = false
      super
      options.paginate = true
      require 'middleman-blog/paginator'
      @paginator = Middleman::Blog::Paginator.new(@app, self)
      @app.sitemap.register_resource_list_manipulator(:"blog_#{name}_paginate", @paginator, false)
    else
      super
    end
  end
end

Middleman::BlogExtension.send(:prepend, AllowPaginatingCustomPages)
