require 'bundler/setup'

ENV['RACK_ENV'] = 'test'
require 'bundler_api/env'

require 'rspec/core'
require 'rspec/mocks'
require 'support/database'
require 'support/latch'
require 'support/matchers'

require 'dalli'

RSpec.configure do |config|
  config.filter_run :focused => true
  config.run_all_when_everything_filtered = true
  config.alias_example_to :fit, :focused => true

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.mock_with :rspec do |c|
    c.syntax = [:should, :expect]
  end

  config.before(:each) do
    Dalli::Client.new.flush
  end

  config.raise_errors_for_deprecations!
end
