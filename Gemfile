source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.13'
gem 'bootstrap-sass', '2.1'
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.0.1'
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.6'
gem 'jquery-rails', '2.0.2'

gem 'devise', "~> 2.2.4"
gem "cancan", "~> 1.6.9"
gem "thin", "~> 1.5.1"
gem 'mail', '2.5.3'
gem "friendly_id", "~> 4.0.9"

group :development, :test do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.11.0'
  gem 'guard-rspec', '1.2.1'
  gem 'spork', '0.9.2'
  gem 'guard-spork', '1.2.0'
  gem 'annotate', '~> 2.5.0'
end

# Gems used only for assets and not required
# in production environments by default.

group :test do
  gem 'selenium-webdriver', '2.0'
  gem 'capybara', '1.1.2'
  # gem 'rb-fsevent', '0.9.3', :require => false
  # gem 'growl', '1.0.3'
  # gem 'launchy', '2.2.0'
  gem 'factory_girl_rails', '4.1.0'
  gem 'cucumber-rails', '1.2.1', :require => false
  gem 'database_cleaner', '0.7.0'

  gem "email_spec", "~> 1.4.0"
end

group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'

group :production do
  gem 'pg', '0.12.2'
  gem 'rack-google_analytics', :require => "rack/google_analytics"
end
