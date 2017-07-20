# frozen_string_literal: true

require_relative "boot"

require "rails"

require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
#
Bundler.require(*Rails.groups)

module Folkvald
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    #
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those
    # specified here. Application configuration should go into files in
    # config/initializers. All .rb files in that directory are
    # automatically loaded.

    # We are only dealing with Swedish, so set the default locale to Swedish.
    #
    config.i18n.default_locale = :sv
    config.i18n.load_path +=
      Dir[Rails.root.join("config", "locales", "**", "*.yml")]

    # Set time zone to Stockholm. Sweden has only one time zone.
    #
    config.time_zone = "Stockholm"
  end
end
