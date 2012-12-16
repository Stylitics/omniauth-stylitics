# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-stylitics/version', __FILE__)

Gem::Specification.new do |gem|

  gem.add_dependency 'omniauth-oauth2'

  gem.authors       = ["Stylitics"]
  gem.email         = ["devchat@stylitics.com"]
  gem.description   = %q{Omniauth strategy for Stylitics}
  gem.summary       = %q{Omniauth strategy for Stylitics}
  gem.homepage      = "https://github.com/stylitics/omniauth-stylitics"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-stylitics"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Stylitics::VERSION
end
