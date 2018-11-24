source 'https://rubygems.org'

ruby '2.5.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.6'
gem 'dotenv-rails', :groups => [:development, :test], :require => 'dotenv/rails-now'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 3.0'
gem 'redis-rails'

gem 'sass-rails', '~> 5.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'hirb'
gem 'rack-timeout'
gem 'rest-client'
gem 'hashie'
gem 'oj'
gem 'netaddr', '~> 1.5'
gem 'twilio-ruby'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors', '~> 0.4.0', :groups => [:development, :test]
gem 'rack-cors', require: 'rack/cors'

# gem 'unicorn'
# gem 'unicorn-worker-killer'
gem "resque", '~>1.27.4', :require => 'resque/server'
gem 'resque-scheduler', :require => "resque/scheduler"
gem 'resque-throttler', :require => 'resque/throttler'
gem 'resque-job-stats'
gem 'resque-history'
gem 'resque-scheduler-web'
gem 'addressable'

gem 'paperclip', '~> 5.0.0'
gem 'stripe'
gem 'ruby-progressbar'
gem 'rack-attack'
gem 'omniauth'
gem 'devise_token_auth'


group :test do
  gem 'database_cleaner'
  gem 'vcr'
  gem 'webmock'
  gem 'stripe-ruby-mock', '~> 2.5.0', :require => 'stripe_mock'
  gem 'rspec_junit_formatter'
end

group :development, :test do
  gem 'shoulda-matchers'
  gem 'faker'
  gem 'factory_bot_rails'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'annotate'
  gem 'pry'
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rails-perftest'
  gem 'ruby-prof'
  gem 'foreman'
  gem 'guard'
  gem 'guard-spring'
  gem 'guard-rspec', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]