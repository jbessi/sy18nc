# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sy18nc/version'

Gem::Specification.new do |spec|
  spec.name          = "sy18nc"
  spec.version       = Sy18nc::VERSION
  spec.authors       = ["Michał Darda"]
  spec.email         = ["michaldarda@gmail.com"]
  spec.description   = %q{ Simple tool to synchronize Rails ymls with locales. }
  spec.summary       = %q{ Simple tool to synchronize Rails ymls with locales. }
  spec.homepage      = "https://github.com/michaldarda/sy18nc"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "psych"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "rspec"
end
