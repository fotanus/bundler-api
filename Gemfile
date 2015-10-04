source "https://rubygems.org"

ruby File.read(File.expand_path('../.ruby-version', __FILE__)).strip

gem 'appsignal', '0.11.6.beta.0'
gem 'librato-metrics'
gem 'lock-smith'
gem 'metriks-librato_metrics', github: 'indirect/metriks-librato_metrics'
gem 'metriks-middleware'
gem 'pg'
gem 'puma'
gem 'rake'
gem 'dalli', github: 'indirect/dalli'
gem 'redis'
gem 'sequel'
gem 'sequel_pg', require: false
gem 'sinatra'

group :test do
  gem 'artifice'
  gem 'rack-test'
  gem 'rspec-core'
  gem 'rspec-expectations'
  gem 'rspec-mocks'
end

group :development, :test do
  gem 'foreman'
  gem 'dotenv', require: false
  gem 'rubocop', require: false
end
