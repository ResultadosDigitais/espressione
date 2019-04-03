# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "espressione"

Gem::Specification.new do |spec|
  spec.name          = "espressione"
  spec.version       = Espressione::VERSION
  spec.authors       = ["Daniel Vinciguerra"]
  spec.email         = ["daniel.vinciguerra@resultadosdigitais.com.br"]

  spec.summary       = "Espressione is a Ruby community-driven common regular expression patterns gem"
  spec.description   = "Espressione is a Ruby community-driven common regular expression patterns gem"
  spec.homepage      = "https://github.com/dvinciguerra/espressione"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/dvinciguerra/espressione"
    spec.metadata["changelog_uri"] = "https://github.com/dvinciguerra/espressione/blob/master/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",    "~> 2.0"
  spec.add_development_dependency "rake",       "~> 10.0"
  spec.add_development_dependency "rspec",      "~> 3.0"
  spec.add_development_dependency "simplecov",  "~> 0.16.1"
end
