# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap-sass', '~> 3.3.6'
gem 'cloudinary'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'dotenv-rails'
gem 'facebook-graph'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'koala'
gem 'omniauth-facebook'
gem 'pg', '~> 0.18'
gem 'pry'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.5'
gem 'rubocop'
gem 'sass-rails', '~> 5.0'
gem 'slim'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
