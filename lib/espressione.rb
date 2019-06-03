# frozen_string_literal: true

require "espressione/regex"
require "espressione/loader"

module Espressione
  VERSION = "0.3.0"

  extend Espressione::Regex::ID
  extend Espressione::Regex::DateTime
  extend Espressione::Regex::Internet

  extend Espressione::Loader
end
