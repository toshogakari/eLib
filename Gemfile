source 'https://rubygems.org'

ruby '2.3.1'

gem 'rails', '4.2.6'
gem 'sass-rails', '~> 5.0.4'
gem 'uglifier', '~> 3.0.0', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails', '~> 4.1.1'
gem 'turbolinks', '~> 2.5.3'
gem 'jbuilder', '~> 2.5.0'

gem 'redis', '~> 3.3.0', require: ['redis', 'redis/connection/hiredis']
gem 'hiredis', '~> 0.6.1'
gem 'readthis', '~> 1.3.0'

gem 'dalli' # memcached client

gem 'httpclient', '~> 2.8.0'
gem 'devise', '~> 4.1.1'

gem 'rails_admin', '~> 0.8.1'
gem 'kaminari', '~> 0.16.3'
gem 'api-pagination', '~> 4.1', '>= 4.1.1'

group :development, :test do
  gem 'sqlite3', '~> 1.3.11'
  gem 'byebug', '~> 9.0.5'
  gem 'rspec-rails', '~> 3.4.2'
  gem 'spring-commands-rspec', '~> 1.0.4'
  gem 'shoulda-matchers', '~> 3.1.1'
  gem 'database_cleaner', '~> 1.5.3'
  gem 'factory_girl_rails', '~> 4.7.0'
  gem 'capybara', '~> 2.7.1'
  gem 'fuubar', '~> 2.0.0'
  gem 'ffaker', '~> 2.2.0'
  gem 'poltergeist', '~> 1.9.0'
  gem 'launchy', '~> 2.4.3'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring', '~> 1.7.1'
  gem 'pry', '~> 0.10.3'
  gem 'pry-rails', '~> 0.3.4'
  gem 'pry-byebug', '~> 3.4.0'
  gem 'pry-stack_explorer', '~> 0.4.9.2'
  gem 'better_errors', '~> 2.1.1'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'guard-rspec', '~> 4.7.2'
  gem 'guard-livereload', '~> 2.5.2'
  gem 'rb-fsevent', '~> 0.9.7'
  gem 'meta_request', '~> 0.4.0'
  gem 'rails-erd', '~> 1.4.7'
  gem 'letter_opener_web', '~> 1.3.0'
  gem 'redis-browser', '~> 0.3.3'
end

group :test do
  gem 'coveralls', '~> 0.8.13', require: false
end

group :production do
  gem 'rails_12factor', '~> 0.0.3'
  gem 'pg', '~> 0.18.4'
  # gem 'pg_power'
  gem 'unicorn', '~> 5.1.0'
  gem 'newrelic_rpm', '~> 3.15.2'
end
