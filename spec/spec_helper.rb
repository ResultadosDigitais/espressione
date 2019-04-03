# frozen_string_literal: true

require 'rubygems'
require "bundler/setup"

require "simplecov"
SimpleCov.start

require "faker"
require "espressione"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = "spec/examples.txt"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
