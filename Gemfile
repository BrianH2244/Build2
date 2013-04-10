source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.beta1'
gem 'bootstrap-sass', '2.3.0.1'
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.1.2'
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'

gem "heroku", "~> 2.37.2"
gem 'devise', "~> 2.2.3", github: "plataformatec/devise", branch: 'rails4'
gem "cancan", "~> 1.6.9"
gem "thin", "~> 1.5.1"
gem 'mail', '2.5.3'
gem "friendly_id", "~> 4.0.9"

group :development, :test do
  gem 'sqlite3', '1.3.7'
  gem 'rspec-rails', '2.13.0'
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', github: 'railstutorial/spork-rails', branch: 'rails-4'
  gem 'guard-spork', '1.5.0'
  gem 'annotate', '~> 2.5.0'
end

# Gems used only for assets and not required
# in production environments by default.

group :test do
  # gem 'xpath',    github: 'jnicklas/xpath'
  # gem 'capybara', github: 'jnicklas/capybara'
  gem 'selenium-webdriver', '2.0'
  gem 'capybara', '2.1.0.beta1'
  gem 'rb-fsevent', '0.9.3', :require => false
  gem 'growl', '1.0.3'
  gem 'launchy', '2.2.0'
  gem 'factory_girl_rails', '4.2.0'
  gem 'cucumber-rails', '1.3.0', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'

  gem "rb-inotify", "~> 0.9.0"
  gem "libnotify", "~> 0.8.0"
  gem "email_spec", "~> 1.4.0"
end

group :assets do
  gem 'sass-rails',   '4.0.0.beta1'
  gem 'coffee-rails', '4.0.0.beta1'
  gem 'uglifier', '1.0.3'
end

gem 'jquery-rails', '2.2.1'
gem 'turbolinks', '1.0.0'
gem 'jbuilder', '1.0.1'

group :production do
  gem 'pg', '0.15.1'
  gem 'rack-google_analytics', :require => "rack/google_analytics"
end
