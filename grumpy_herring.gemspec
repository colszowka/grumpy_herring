# -*- encoding: utf-8 -*-
require File.expand_path('../lib/grumpy_herring/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Christoph Olszowka"]
  gem.email         = ["christoph at olszowka de"]
  gem.description   = %q{Generates names for your startup's pricing plans}
  gem.summary       = %q{Generates names for your startup's pricing plans}
  gem.homepage      = ""
  
  gem.add_development_dependency 'simplecov', '>= 0.5.3'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "grumpy_herring"
  gem.require_paths = ["lib"]
  gem.version       = GrumpyHerring::VERSION
end
