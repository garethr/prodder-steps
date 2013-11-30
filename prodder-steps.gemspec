# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prodder-steps/version'

Gem::Specification.new do |gem|
  gem.name          = "prodder-steps"
  gem.version       = Prodder::Steps::VERSION
  gem.authors       = ["Gareth Rushgrove"]
  gem.email         = ["gareth@morethanseven.net"]
  gem.description   = "Cucumber steps for security testing"
  gem.summary       = "Extracted from the Prodder security testing suite"
  gem.homepage      = "https://github.com/garethr/prodder-steps"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'

  gem.add_runtime_dependency 'aruba'
  gem.add_runtime_dependency 'rest-client'
  gem.add_runtime_dependency 'ruby-nmap'
  gem.add_runtime_dependency 'cucumber'
  gem.add_runtime_dependency 'rspec'
end
