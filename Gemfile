source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.6.0"
# To bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 4.1'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.8'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.1.0'
# Postgres db
gem 'pg'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'devise', '>= 4.6.0'
gem 'bulma-rails', '~> 0.7.4'
gem 'simple_form', '~> 4.1'
gem 'gravatar_image_tag', github: 'mdeering/gravatar_image_tag'
gem 'sidekiq', '~> 5.2'
gem 'carrierwave', '~> 1.3'
gem 'mini_magick', '~> 4.9'
# gem 'stripe', '~> 3.11'
gem 'stripe', '~> 4.9'
gem 'trix'
gem 'figaro'
gem 'binding_of_caller', '~> 0.8.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.15'
  gem 'selenium-webdriver'
  gem 'better_errors', '~> 2.5'
  gem 'guard', '~> 2.15'
  gem 'guard-livereload', '~> 2.5'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.7'
  gem 'listen', '>= 3.1'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0'
end
