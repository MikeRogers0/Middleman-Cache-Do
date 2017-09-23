require "middleman-core"

Middleman::Extensions.register :middleman_cache_do do
  require 'middleman-cache-do/extension'
  MiddlemanCacheDo::Extension
end
