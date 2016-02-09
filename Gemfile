source 'https://rubygems.org'

gem 'dor-services', '~> 4.21', '>= 4.21.0'
gem 'assembly-image'
gem 'assembly-objectfile', '>= 1.6.4'

group :development, :test do
  gem 'rspec'
  gem 'ruby-debug', platform: :ruby_18
  gem 'rcov', platform: :ruby_18
  gem 'simplecov', platform: [:ruby_19, :ruby_20]
  gem 'debugger', platform: :ruby_19
  gem 'pry'
  gem 'pry-debugger', platform: :ruby_19
end

group :deployment do
  gem 'capistrano', '~> 3.0'
  gem 'capistrano-bundler'
  gem 'dlss-capistrano', '~> 3.0'
end
