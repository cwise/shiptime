# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shiptime/version'

Gem::Specification.new do |spec|
  spec.name          = "shiptime"
  spec.version       = Shiptime::VERSION
  spec.authors       = ["Chris Wise"]
  spec.email         = ["chris@healthwave.co"]
  spec.description   = %q{A gem for the Shiptime API}
  spec.summary       = %q{This gem wraps the SOAP XML API interface for the Shiptime API (http://ship.emergeit.com/api/)}
  spec.homepage      = "https://github.com/cwise/shiptime"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency('savon', '>= 2.3.0')
end
