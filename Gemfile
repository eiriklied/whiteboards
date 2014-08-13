source 'https://rubygems.org'

ruby '2.1.2'

gem 'dotenv-rails', group: [:development, :test]

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'

group :development, :test do
  gem 'sqlite3'
end


# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

group :development do
  gem 'spring'
  gem 'foreman'
end

group :staging, :production do
  gem 'rails_12factor' # https://devcenter.heroku.com/articles/rails-integration-gems
  gem 'pg'
end

gem 'aws-sdk' # for paperclip on s3
gem 'paperclip', '~> 4.1'
gem 'haml'
gem 'puma'
gem 'rack-timeout' # time out puma requests
