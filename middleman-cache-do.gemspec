# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'middleman-cache-do'
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Mike Rogers']
  s.email       = ['me@mikerogers.io']
  s.homepage    = 'https://github.com/MikeRogers0/Middleman-Cache-Do'
  s.summary     = %q{Cache fragments of code to memcache}
  s.description = %q{Adds a cache method to helpers and templates which helps cache blocks of expensive code}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  
  # The version of middleman-core your extension depends on
  s.add_runtime_dependency 'middleman-core', '~> 4.2', '>= 4.2.1'
  
  # Additional dependencies
  s.add_runtime_dependency 'dalli', '~> 2.7', '>= 2.7.6'
end
