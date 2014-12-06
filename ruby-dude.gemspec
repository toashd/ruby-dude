# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby-dude/version'

Gem::Specification.new do |gem|
  gem.name          = "ruby-dude"
  gem.version       = RubyDude::VERSION
  gem.authors       = ["Tobias Schmid"]
  gem.email         = ["toashd@gmail.com"]
  gem.description   = %q{A Lebowski Ipsum generator for ruby}
  gem.summary       = %q{Generate some filler text that ties the room together}
  gem.homepage      = %q{http://github.com/toashd/ruby-dude}
  gem.licenses      = %w{MIT}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'rake'
  gem.add_dependency 'nokogiri'
end

