module RenderPartial
  def partial(template, options={}, &block)
    # Since upgrading Middleman past 4.1.0, the partial function has been
    # overwritten in the Middleman::CoreExtensions::DefaultHelpers class to
    # include parent locals [1].

    # However, this has altered the default partial functionality inherited from
    # Padrino. The hash that is now passed through to Padrino is a simple Ruby
    # Hash, but before, it could be a Middleman::Util::EnhancedHash
    # (functionality similar to Rails's HashWithIndifferentAccess) when metadata
    # was passed into locals.

    # This is problematic for us as we use both Ruby's Hash object and a page's
    # metadata (the Middleman::Util::EnhancedHash object) for locals. With the
    # v4.1.0 implementation, Middleman::Util::EnhancedHash keys are stringified
    # when merged with a Hash, meaning that sometimes we can access locals only
    # as strings, and sometimes only symbols.

    # As a workaround, we've monkey patched the partial helper. The original
    # implementation can be seen at [2].

    # [1] https://github.com/middleman/middleman/commit/95537967316577520ad4a665835edf5d4cd64f48#diff-73bbe2521f3ee694e641e171a69c8817
    # [2] https://github.com/middleman/middleman/blob/09f3be9aba1ee07d5afcf8601e368f1e8fa8c524/middleman-core/lib/middleman-core/core_extensions/default_helpers.rb#L281-L288

    # previously            = {}
    including_parent_locals = Middleman::Util::EnhancedHash.new
    including_parent_locals.merge!(@locs || {})
    including_parent_locals.merge!(options[:locals] || {})

    options[:locals] = including_parent_locals

    # Bypass calling Middleman::CoreExtensions::DefaultHelpers#partial, and call
    # Padrino::Helpers::RenderHelpers#partial instead.
    method(__method__).super_method.super_method.call(template, options, &block)
  end
end
