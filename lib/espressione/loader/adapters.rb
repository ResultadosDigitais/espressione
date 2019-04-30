module Espressione::Loader
  # Interface for working with multiple parsers
  module Adapters
    module_function

    # List of all registered adapters
    @adapters = {}

    # Return a new parser object based on file extension
    # Raise an Error if the source extension is unknowed
    def parser(source)
      content_parser = @adapters[ext_type(source)] || raise("Unknow adapter for `#{source}'")
      content_parser.new(source)
    end

    # list all registered adapters
    def list
      @adapters.values
    end

    # register an adapter to handle one extension
    def register(extension, handler)
      @adapters.merge!(extension.to_sym => handler)
    end

    # extract extension type from a filename
    #
    # Adapter.ext_type "file.txt" #=> :txt
    def ext_type(filename)
      extension = File.extname(filename)
      return false if extension.empty?

      extension.delete('.').to_sym
    end
  end

  require './lib/espressione/loader/adapters/base'
  require './lib/espressione/loader/adapters/yaml_adapter'
end
