# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zipzapzop/version'

Gem::Specification.new do |spec|
  spec.name          = "zipzapzop"
  spec.version       = Zipzapzop::VERSION
  spec.authors       = ["John Davison"]
  spec.email         = ["john@codeunion.io"]
  spec.summary       = "Play my game..."
  spec.description   = "It gets the code flowing."
  spec.homepage      = "https://github.com/codeunion/ZipZapZop"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
