source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.6"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem "rack-cors"

gem 'graphql'

group :development, :test do
  gem 'factory_bot', '~> 6.2.1', require: false
  gem 'ffaker', require: false
  gem 'highline'
  gem 'pry-byebug'
  gem 'pry-doc', require: false
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
  gem 'rspec-rails', '~> 6.0.3'
  gem 'rubocop'
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'timecop', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'rspec-activemodel-mocks'
  gem 'rspec-collection_matchers', '~> 1.2.0'
  gem 'rspec-core', '~> 3.12'
  gem 'rspec-expectations', '~> 3.12'
  gem 'rspec-its'
  gem 'rspec-mocks', '~> 3.12'
  gem 'shoulda-matchers', '~> 5.3'
  gem 'test-prof', '~> 1.2'
  gem 'webmock'
end
