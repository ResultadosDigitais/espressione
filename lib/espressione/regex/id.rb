# frozen_string_literal: true

module Espressione
  module Regex::ID
    # uuid pattern
    UUID = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/.freeze
  end
end
