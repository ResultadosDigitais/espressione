module Espressione::Loader::Adapters

  # This class implements the base methods for an Adapter
  #
  # class MyAdapter < Base
  #   parse_extension :my
  #
  #   def parse
  #     # ...
  #   end
  # end
  class Base

    class << self
      # Set how extension your adapter will handle
      def parse_extension(extension)
        Espressione::Loader::Adapters.register(extension, self)
      end
    end

    attr_reader :source

    def initialize(source)
      @source = source
    end

    # absctract parse method
    #
    # returns [Hash]: hash with name (key) and expressions (value) for each
    #   expression in source
    def parse
      raise "absctract method called"
    end

    # allow iteration with each parsed expression
    def each(&block)
      parse.each(&block)
    end

  end
end
