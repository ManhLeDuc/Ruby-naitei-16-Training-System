require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RubyNaitei16TrainingSystem
  class Application < Rails::Application
    config.load_defaults 6.0
    config.i18n.load_path += Dir[Rails
                             .root
                             .join("config", "locales", "**", "*.{rb,yml}")]
    config.i18n.available_locales = [:en, :vi]
    config.i18n.default_locale = :vi
    config.action_view.embed_authenticity_token_in_remote_forms = true
  end
end
