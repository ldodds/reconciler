# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'reconciler/version'

Gem::Specification.new do |spec|
  spec.name          = "reconciler"
  spec.version       = Reconciler::VERSION
  spec.authors       = ["ldodds"]
  spec.email         = ["leigh@ldodds.com"]
  spec.description   = %q{Reconciliation API Framework}
  spec.summary       = %q{Reconcilation API Framework}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "json"
  
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "simplecov-rcov"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-expectations"
  spec.add_development_dependency "pry"  
end
