# frozen_string_literal: true

require "espressione/regex"

module Espressione
  VERSION = "0.2.0"

  extend Espressione::Regex::ID
  extend Espressione::Regex::DateTime
  extend Espressione::Regex::Internet
end
