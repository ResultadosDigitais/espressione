# frozen_string_literal: true

module Espressione
  module Regex::DateTime
    # datetime (iso format) pattern
    DATETIME = /^\d{4}-\d{2}-\d{2}(\s|T)\d{2}:\d{2}:\d{2}(\s*(UTC|([\-\+]?(\d+|\d{2}:\d{2}))))*$/.freeze

    # date yyyy/mm/dd pattern
    DATE = /^\d{4}-\d{2}-\d{2}$/.freeze

    # time pattern
    TIME = /^\d{4}-\d{2}-\d{2}$/.freeze
  end
end
