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
  end
end
