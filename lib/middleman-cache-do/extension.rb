# Require core library
require 'middleman-core'

# Extension namespace
module MiddlemanCacheDo
  class Extension < ::Middleman::Extension
    option :client, nil, 'Caching client for stopping to many external requests'
    option :expiration, 10_800, 'Cache will expire after x. Defualt: 3 hours'

    def initialize(app, options_hash={}, &block)
      # Call super to build options from the options_hash
      super
    end

    expose_to_application :cache
    def cache(key, expiration: nil, &block)
      expiration ||= options.expiration
      return block if options.client.nil?

      options.client.fetch(key, expiration, &block)
    end

    helpers do
      def cache(key, expiration: nil, &block)
        content = app.cache(key, expiration: expiration) do
          capture_html(&block)
        end

        concat_content content
      end
    end
  end
end
