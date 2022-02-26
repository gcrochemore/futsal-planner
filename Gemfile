source 'http://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production do
  gem 'pg', '~> 0.21.0'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'sqlite3'
  gem 'simplecov'
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails'
  gem 'rails-controller-testing'
  gem 'database_cleaner', '~> 1.6.1'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


gem 'devise'

gem 'bootstrap', '~> 4.0.0.alpha6'

gem 'autoprefixer-rails'

gem 'simple_form'

gem 'andand'

gem 'paper_trail', '~> 6.0.2'

gem 'rails-i18n', '~> 4.0.0' # For 4.0.x

gem 'bootstrap-datepicker-rails'

gem 'cancancan'

gem 'rolify'

gem 'cocoon' #nested form

gem 'ransack'

gem 'will_paginate'

gem "select2-rails"

gem "rails-erd"

gem 'seed_dump'

gem "simple_calendar", "~> 2.0"

gem 'font-awesome-sass', '~> 4.7.0'

gem 'nokogiri', '~> 1.13.2'

gem 'chart-js-rails'

gem 'rack-cors', :require => 'rack/cors'

gem 'popper_js', '~> 1.11', '>= 1.11.1'

source 'http://insecure.rails-assets.org/' do
  gem 'rails-assets-tether', '>= 1.1.0'
end

gem 'bcrypt', platforms: :ruby

# User Authentication with Facebook
gem 'omniauth-facebook'
# Development ENV Variables
gem 'figaro'

# User Authentication with Google
gem 'omniauth-google-oauth2'

# User Authentication with Azure
gem 'omniauth-azure-oauth2'

# User Authentication with Twitter
gem 'omniauth-twitter'

# User Authentication with Linkedin
gem 'omniauth-linkedin'
