# frozen_string_literal: true

require "bundler/setup"

require "simplecov"
require "espressione"

if ENV["COVERAGE"]
  SimpleCov.start do
    add_filter '/spec/'
    track_files 'lib/**/*.rb'
  end
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = "spec/examples.txt"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
