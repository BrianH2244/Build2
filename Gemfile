source 'https://rubygems.org'
ruby "1.9.3"

  gem 'rails', '3.2.9'
  gem "heroku", "~> 2.24.1"
  gem 'jquery-rails', '2.0.2'
  gem 'bootstrap-sass', '2.1'
  gem "bcrypt-ruby", "~> 3.0.1"
  gem 'faker', '1.0.1'
  gem 'will_paginate', '3.0.3'
  gem 'bootstrap-will_paginate', '0.0.6'
  gem "devise", ">= 2.0.4"
  gem "cancan", "~> 1.6.7"
  gem "thin", "~> 1.3.1"
  gem 'mail', '2.4.4'
  gem "friendly_id", "~> 4.0.4"

group :development, :test do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.11.0'
  gem 'guard-rspec', '1.2.1'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

group :test do
  gem 'capybara', '1.1.2'
  gem "rb-inotify", "~> 0.8.8"
  gem "libnotify", "~> 0.7.2"
  gem 'guard-spork', '0.3.2'
  gem 'spork', '0.9.0'
  gem 'factory_girl_rails', '4.1.0'
  gem 'cucumber-rails', '1.2.1', :require => false
  gem 'database_cleaner', '0.7.0'
  gem "email_spec", "~> 1.2.1"
end

group :development do
  gem 'annotate', '~> 2.5.0'
end

group :production do
  gem 'pg', '0.12.2'
  gem 'rack-google_analytics', :require => "rack/google_analytics"
end
