# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'html5-beautifier/version'

Gem::Specification.new do |gem|
  gem.name          = "html5-beautifier"
  gem.version       = Html5::Beautifier::VERSION
  gem.authors       = ["Jari Jokinen"]
  gem.email         = ["info@jarijokinen.com"]
  gem.description   = %q{HTML5 Beautifier for Ruby}
  gem.summary       = %q{HTML5 Beautifier for Ruby}
  gem.homepage      = "http://jarijokinen.com/html5-beautifier"

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ["lib"]
  gem.test_files    = gem.files.grep(%r{^(spec)/})

  gem.add_dependency "nokogiri"
  gem.add_development_dependency "rspec"
end
