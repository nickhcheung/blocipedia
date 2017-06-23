source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

group :production do
  gem "pg"
  gem "rails_12factor"
end

group :development do
  # Use sqlite3 as the database for Active Record
  gem "sqlite3"
  gem "web-console", "~> 2.0"
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
#Bootstrap
gem "bootstrap-sass"
#Figaro used to securely store secure configuration info (API Keys) as environmental variables
gem "figaro"
#devise isa flexible authentication solution for Rails with Warden
gem "devise"
#Pundit for Authorization System
gem "pundit"
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem "spring"
  gem "rspec-rails"
  gem "nyan-cat-formatter"
  gem "shoulda"
  gem "faker"
  gem "factory_girl_rails"
  gem "pry-rails"
end
