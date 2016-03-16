# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'massdriver/version'

Gem::Specification.new do |spec|
  spec.name          = "massdriver"
  spec.version       = Massdriver::VERSION
  spec.authors       = ["Glenn West"]
  spec.email         = ["glennswest@yahoo.com.sg"]
  spec.summary       = %q{Microservice systems designer.}
  spec.description   = %q{A Tool to define and automate Devops.}
  spec.homepage      = "https://github.com/MetaService/Massdriver"
  spec.license       = "gplv3"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
