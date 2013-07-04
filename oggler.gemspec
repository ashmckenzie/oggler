# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oggler/version'

Gem::Specification.new do |spec|
  spec.name          = "oggler"
  spec.version       = Oggler::VERSION
  spec.authors       = ["Ash McKenzie"]
  spec.email         = ["ash@greenworm.com.au"]
  spec.description   = %q{Oggler is a feature toggler app, including an optional web interface}
  spec.summary       = %q{Oggler is a feature toggler app}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.0"
  spec.add_dependency "activerecord", ">= 3.0"
  spec.add_dependency "dalli", "~> 2.6"
  spec.add_dependency "redis", "~> 3.0"
  spec.add_dependency "redis-namespace", "~> 1.2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
