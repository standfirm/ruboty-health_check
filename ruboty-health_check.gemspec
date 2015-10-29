# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/health_check/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-health_check"
  spec.version       = Ruboty::HealthCheck::VERSION
  spec.authors       = ["mzp"]
  spec.email         = ["mzpppp@gmail.com"]
  spec.summary       = "health check"
  spec.description   = "health_check"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
