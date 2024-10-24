source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.6'

# Specify Rails version 6.1
gem 'rails', '~> 6.1.0'

# Use postgresql as the database for Active Record
gem 'pg', '>= 1.2.3'

# Use Puma as the app server
gem 'devise'
gem 'devise-bootstrap-views', '~> 1.0'
gem 'dotenv-rails', groups: %i[development test]
gem 'font-awesome-rails'
gem 'puma', '~> 5.0'
gem 'twelvedata_ruby'
# Use SCSS for stylesheets
gem 'rubocop'
gem 'sass-rails', '>= 6'

# Use Webpacker for JavaScript
gem 'webpacker', '~> 5.0'

# Turbolinks makes navigating your web application faster
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease
gem 'jbuilder', '~> 2.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Debugger
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Interactive console on exception pages
  gem 'listen', '~> 3.2'
  gem 'web-console', '>= 4.0.0'
  # Spring speeds up development
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.35'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
