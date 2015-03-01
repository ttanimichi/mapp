# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mapp/version'

Gem::Specification.new do |spec|
  spec.name          = "mapp"
  spec.version       = Mapp::VERSION
  spec.authors       = ["Tsukuru Tanimichi"]
  spec.email         = ["ttanimichi@hotmail.com"]

  spec.summary       = "[[1,2], [3,4]].mapp {|i| i.to_s }"
  spec.homepage      = "https://github.com/ttanimichi/mapp"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "test-unit", "~> 3.0.0"
end
