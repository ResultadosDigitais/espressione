module Espressione
  # Allow Espressione to load a set of regexps from a file
  #
  #  # In lotr.yml
  #  # gandalf: '[Gg]lamdring'
  #  # frodo: '[Ss]ting'
  #  # aragorn: '[Aa]nduril'
  #
  #  Espressione.load "lotr.yml"
  #
  #  Espressione.gandalf # => /[Gg]lamdring/
  #  Espressione.aragorn # => /[Aa]nduril/
  #
  # You can also set a _prefix_ or _sulfix_ for the names
  #
  # Espressione.load "lotr.yml", sulfix: :weapon
  #
  # Espressione.frodo_weapon # => /[Ss]ting/
  module Loader
    autoload :Adapters, 'espressione/loader/adapters'

    # Call the adapter for source and create a method to wrapper each
    # expression
    #
    # Expression.load "smeagol.yml", prefix: :gollum
    #
    # Espressione.gollum_loves # => /precisouss/
    # Espressione.gollum_hates # => /hobbitss/
    def load(source, prefix: nil, sulfix: nil)
      Espressione::Loader::Adapters.parser(source).each do |name, expression|
        full_name = [prefix, name, sulfix].compact.join('_')
        define_expression(full_name, expression)
      end
    end

    # Define a method that returns the expression
    def define_expression(name, expression)
      instance_variable_set("@#{name}", Regexp.new(expression).freeze)
      singleton_class.define_method(name) { instance_variable_get("@#{name}") }
    end
  end
end
