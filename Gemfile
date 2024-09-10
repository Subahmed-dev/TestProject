source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

# Rails
gem 'rails', '5.2.4.3'

# Drivers
gem 'sqlite3', '~> 1.6'
gem 'sequel'

gem 'nokogiri', '~> 1.13'

gem 'kaminari', '~> 1.2'

gem 'faraday', '~> 2.8'

# App Server
gem 'puma'
gem 'rack-cors'

# Assets
gem 'jbuilder'

# Security
gem 'bcrypt'

# Others
gem 'awesome_print'
gem 'date_validator' # makes it easier to validate times/dates
gem 'email_validator' # makes it easier to validate email
gem 'tzinfo-data', '>= 1.2016.7' # better timezone data

# Only for Development
group :development do
  gem 'dotenv-rails'
  gem 'byebug'
  gem 'faker'
end
