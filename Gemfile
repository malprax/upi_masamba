source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.4.2"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'

#postgres database
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

#custom gem write here below
#very important gem
gem 'devise'
gem 'cancancan'
gem 'bootstrap', '~> 4.0.0.beta'

#pagination gem
gem 'kaminari'

#handling form
gem 'simple_form'
gem 'nested_form'

#handling login via social media
gem "omniauth-oauth2"
gem "omniauth-google-oauth2"
gem "omniauth-facebook"
#convert to pdf
gem 'prawn'
gem 'prawn-table', '~> 0.2.2'
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'

#annotate
gem 'annotate'

#ip to map
# gem 'iptoearth', git: 'https://github.com/mbuckbee/Ip-To-Earth-Gem.git'

#font awesome rails
gem "font-awesome-rails"

#tidak perlu di tulis disini
# gem 'mailcatcher'
# gem 'heroku'

#using JavaScript
# gem 'webpacker', git: 'https://github.com/rails/webpacker.git'
gem 'jquery-rails'

#uploader image_tag
gem 'google-api-client'

# Shrine
gem 'shrine', '~> 2.7'
gem 'aws-sdk-s3', '~> 1.2'   # for S3 storage
gem 'sucker_punch', '~> 2.0' # for backgrounding plugin

#for creating thumb image
gem 'image_processing'
gem "mini_magick", ">= 4.3.5"

#image store_dimensions with plugin store_dimensions in image_uploader.rb
gem 'fastimage'

#handling error 743 from shrine cache
gem 'json'

#for secrets
gem 'figaro'

#gem strong_migrations
# gem 'strong_migrations'

#excel
gem 'rubyzip', '~> 1.1.0'
gem 'axlsx', '2.1.0.pre'
gem 'axlsx_rails'
