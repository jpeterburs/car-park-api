source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

gem 'jbuilder', '~> 2.7'
gem 'mysql2', '~> 0.5'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'

gem 'bootsnap', '>= 1.4.4', require: false

gem 'rack-cors'

group :development, :test do
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false

  gem 'faker'
  gem 'pry-rails'
end

group :development do
  gem 'listen', '~> 3.3'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
