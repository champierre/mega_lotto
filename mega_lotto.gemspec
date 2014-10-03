# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mega_lotto/version'

Gem::Specification.new do |spec|
  spec.name          = "champierre_mega_lotto"
  spec.version       = MegaLotto::VERSION
  spec.authors       = ["Junya Ishihara"]
  spec.email         = ["junya@champierre.com"]
  spec.summary       = %q{A Ruby gem to generate lottery drawings.}
  spec.description   = %q{A Ruby gem to generate lottery drawings.}
  spec.homepage      = "https://github.com/champierre/mega_lotto"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
