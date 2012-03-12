# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rps_game/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Rafael George"]
  gem.email         = ["george.rafael@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "rps_game"
  gem.require_paths = ["lib"]
  gem.version       = RpsGame::VERSION

  gem.add_development_dependency('rspec')
  gem.add_development_dependency('simplecov')
end
