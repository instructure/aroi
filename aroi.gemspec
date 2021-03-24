# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'aroi/version'

Gem::Specification.new do |spec|
  spec.name          = "aroi"
  spec.version       = Aroi::VERSION
  spec.authors       = ["Jason Madsen", "Instructure"]
  spec.email         = ["simon@instructure.com"]
  spec.summary       = %q{ActiveRecord Object Instrumenter: Instrument the creation of ActiveRecord objects}
  spec.homepage      = "https://github.com/instructure/aroi"
  spec.license       = "MIT"

  spec.files         = Dir.glob("{lib,spec}/**/*") + %w(test.sh)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 5.2"
  spec.add_dependency "activesupport", ">= 5.2"

  spec.add_development_dependency "appraisal"
  spec.add_development_dependency "bundler", ">= 1.16"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sqlite3"
end
