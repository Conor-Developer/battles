source 'https://rubygems.org'

ruby '3.0.2'

group :test do
  gem 'rspec'
  gem 'simplecov', require: false, group: :test
  gem 'simplecov-console', require: false, group: :test
  gem 'capybara'
  gem 'webdrivers', '~> 5.0', require: false
end

group :development, :test do
  gem 'rubocop', '1.20'
  gem 'sinatra'
  gem 'sinatra-contrib'
  gem 'webrick'
end
