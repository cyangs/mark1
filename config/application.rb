require_relative 'boot'

require 'rails/all'
require './lib/modules/validator.rb'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MK1
  class Application < Rails::Application

    # WHY THE FUCK WONT THIS AUTOLOAD????????
    config.autoload_paths += Dir["#{config.root}/lib", "#{config.root}/lib/**/"]
    config.autoload_paths += %W(#{config.root}/lib)
    config.autoload_paths += %W(#{config.root}/lib/modules)
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
