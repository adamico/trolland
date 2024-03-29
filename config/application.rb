require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Trollit
  class Application < Rails::Application
    config.generators do |g|
      g.helpers false
      g.javascripts false
      g.stylesheets false
      g.view_specs false
      g.helper_specs false
      g.controller_specs false
      g.routing_specs false
      g.request_specs false
    end
  end
end
