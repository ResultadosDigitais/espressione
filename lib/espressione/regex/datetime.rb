# frozen_string_literal: true

module Espressione
  module Regex::DateTime

    # datetime (iso format) pattern
    def datetime
      @datetime ||= /^\d{4}-\d{2}-\d{2}(\s|T)\d{2}:\d{2}:\d{2}(\s*(UTC|([\-\+]?(\d+|\d{2}:\d{2}))))*$/.freeze
    end

    # date yyyy/mm/dd pattern
    def date
      @date ||= /^\d{4}-\d{2}-\d{2}$/.freeze
    end

    # time pattern
    def time
      @time ||= /^\d{1,2}:\d{1,2}:\d{1,2}$/.freeze
    end
  end
end
