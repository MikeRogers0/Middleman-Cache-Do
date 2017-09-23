# Middleman Cache Do

Cache blocks of stuff into a memcache store. Handy for when you're making API calls between lots of builds.

## Example Usage

### Gemfile

    gem 'dalli' # Your memcache client.
    gem 'middleman-cache-do'


### Install memcache locally

    brew install memcached


### .env

    MEMCACHEDCLOUD_SERVERS="127.0.0.1:11211"
    MEMCACHEDCLOUD_USERNAME=""
    MEMCACHEDCLOUD_PASSWORD=""


### config.rb

    activate :middleman_cache_do do |config|
      config.client = Dalli::Client.new(ENV['MEMCACHEDCLOUD_SERVERS'].split(','), {
        username: ENV['MEMCACHEDCLOUD_USERNAME'],
        password: ENV['MEMCACHEDCLOUD_PASSWORD'],
        namespace: 'middleman_cache_do',
        compress: true
      }) if ENV['MEMCACHEDCLOUD_SERVERS']
    end


### In your Helpers

    helpers do
      def some_cached_method
        app.cache 'some_method' do
          { json: :blob } # Call your external API here.
        end
      end
    end


### In your views

    <%= cache 'Some-Key' do %>
      <!-- Some external call to an API -->
    <% end %>
