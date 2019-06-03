require 'yaml'

module Espressione::Loader::Adapters

  # Parse for Yaml files
  # https://yaml.org/
  class YamlAdapter < Base
    parse_extension :yml

    # Yaml file parser
    def parse
      raise(IOError, "missing file: `#{source}`") unless File.exists?(source)
      YAML.load_file(source) || [] # YAML's parser return false when file is empty
    end
  end
end
