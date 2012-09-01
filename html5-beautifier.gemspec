# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'html5-beautifier/version'

Gem::Specification.new do |gem|
  gem.name          = "html5-beautifier"
  gem.version       = Html5::Beautifier::VERSION
  gem.authors       = ["Jari Jokinen"]
  gem.email         = ["info@jarijokinen.com"]
  gem.description   = %q{HTML5 Beautifier for Ruby on Rails}
  gem.summary       = %q{HTML5 Beautifier plugin for Ruby on Rails}
  gem.homepage      = "http://jarijokinen.com/html5-beautifier"

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ["lib"]

  s.add_dependency "rails"
  s.add_dependency "nokogiri"
end
