require_relative 'boot'

require 'rails/all'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FutsalPlanner
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

	Rails.application.routes.default_url_options[:host] = ENV['HOST']

	config.before_configuration do
	  env_file = File.join(Rails.root, 'config', 'local_env.yml')
	  YAML.load(File.open(env_file)).each do |key, value|
	    ENV[key.to_s] = value
	  end if File.exists?(env_file)
	end

	config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
 
	config.i18n.default_locale = :fr
	
  end
end
