# frozen_string_literal: true

require "espressione/version"
require "espressione/regex"

module Espressione
  VERSION = "0.1.0"

  include Espressione::Regex::ID
  include Espressione::Regex::DateTime
  include Espressione::Regex::Internet
end
