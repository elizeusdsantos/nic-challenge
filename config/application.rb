require_relative 'boot'

require 'rails/all'
require 'apartment/elevators/subdomain'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NicChallenge
  class Application < Rails::Application
    config.load_defaults 5.2
    config.middleware.use Apartment::Elevators::Subdomain

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource( '*',
          headers: :any,
          methods: [:get, :post, :put, :patch, :delete, :options, :head]
        )
      end
    end

    config.generators do |g|
      g.test_framework  false
      g.stylesheets     false
      g.javascripts     false
      g.helper          false
      g.channel         assets: false
    end

  end
end
