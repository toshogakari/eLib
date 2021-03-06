source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# React settings.
gem 'browserify-rails'
gem 'react-rails'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Database is postgreSQL
gem 'pg'
# Use http Clients
gem 'httpclient'

# login settings
gem 'devise'
# gem 'devise-i18n'
# gem 'omniauth'
# gem 'omniauth-facebook'
# gem 'omniauth-github'
gem 'rails_admin'

# pagination
gem 'kaminari', '~> 0.16.3'
gem 'api-pagination', '~> 4.1', '>= 4.1.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # BDD
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  gem 'shoulda-matchers', require: false
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  # gem 'capybara'
  # gem 'cucumber-rails', :require => false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # See https://github.com/rails/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby

  # Debugger
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'hirb'
  gem 'hirb-unicode'

  # guard gems
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'rb-fsevent'

  # chrome addon
  gem 'meta_request'

  # generate ER
  gem 'rails-erd'

  # send mailer
  gem 'letter_opener_web'

end

# codeclimate
group :test do
  gem "codeclimate-test-reporter", require: nil
end

# heroku settings
group :production do
  gem 'rails_12factor'
  gem 'unicorn'
  gem 'newrelic_rpm'
end
