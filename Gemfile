source 'https://rubygems.org'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'jbuilder', '~> 2.5'
gem 'rack-cors', require: 'rack/cors'
gem 'devise_token_auth'

group :production do
  gem 'rails_12factor'
end

group :development do
 gem 'listen', '~> 3.0.5'
 gem 'spring'
 gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'pry'
  gem 'pry-byebug'
  gem 'database_cleaner'
  gem 'responders', '~> 2.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
