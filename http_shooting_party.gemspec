# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'http_shooting_party/version'

Gem::Specification.new do |spec|
  spec.name          = "http_shooting_party"
  spec.version       = HttpShootingParty::VERSION
  spec.authors       = ["Ed Robinson"]
  spec.email         = ["ed.robinson@reevoo.com"]
  spec.summary       = %q{ Benchmarking Suite for HTTP client libaries }
  spec.description   = %q{ Benchmarking Suite for HTTP client libaries }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "oj"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
