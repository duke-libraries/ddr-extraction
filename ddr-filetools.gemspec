# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ddr/filetools/version'

Gem::Specification.new do |spec|
  spec.name          = "ddr-filetools"
  spec.version       = Ddr::FileTools::VERSION
  spec.authors       = ["David Chandek-Stark"]
  spec.email         = ["dchandekstark@gmail.com"]
  spec.summary       = "Pluggable text and metadata extraction service."
  spec.description   = "Pluggable text and metadata extraction service."
  spec.homepage      = "https://github.com/duke-libraries/ddr-filetools"
  spec.license       = "BSD-3-Clause"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
end
