# if RUBY_VERSION =~ /1.9/ 
#   Encoding.default_external = Encoding::UTF_8
#   Encoding.default_internal = Encoding::UTF_8
# end

source 'https://rubygems.org'
ruby "2.0.0"

gem 'rails', '3.2.13'
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.0.1'
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.6'
gem 'kaminari'
gem 'active_link_to'
# gem "paperclip"     
gem 'commands'
gem "mechanize", "~> 2.6.0"
gem "devise"
gem 'cancan'
gem 'yaml_db'
gem 'progress_bar'
gem "markitup-rails"
gem "browser"
# gem 'rmagick'
gem 'carrierwave'
gem 'jquery-star-rating-rails'
gem 'public_activity'
gem 'omniauth'
gem 'omniauth-github'
gem 'jbuilder'
gem 'unicorn'
gem 'byebug'
# gem 'debugger', '1.6.1'
gem 'cache_digests'

group :development, :test do
  gem 'cucumber-rails', :require => false
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'ruby_gntp'
  gem 'capybara', '1.1.2'
  gem 'factory_girl_rails', '1.4.0'
  gem 'database_cleaner', '0.7.0'
  gem 'guard-spork', '0.3.2'
  gem 'spork', '0.9.0'
  gem 'launchy', '2.1.0'
  gem 'simplecov', '>=0.3.8', :require => false
  gem 'nokogiri'
  gem 'rb-fsevent'
  gem "capistrano"    
  # gem 'capistrano-rails'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'  
  gem 'coffee-rails'
  gem 'compass-rails' 
  gem 'bootstrap-sass'
  gem 'twitter-bootstrap-rails' 
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem 'jquery-rails'
  gem 'uglifier'
  gem 'turbo-sprockets-rails3'
end

group :production do
  gem 'pg'
end

group :production, :staging do
  gem 'execjs'
  gem 'therubyracer'
  gem 'god'
  gem 'elif' # For Scout RoR plugin
  gem 'request-log-analyzer'
  gem 'rails_12factor'
end
 
group :console do
  gem 'hirb' 
  gem 'awesome_print'
end
