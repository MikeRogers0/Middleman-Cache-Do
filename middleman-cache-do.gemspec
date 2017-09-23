# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'middleman-cache-do'
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Mike Rogers']
  s.email       = ['me@mikerogers.io']
  s.homepage    = 'https://mikerogers.io'
  s.summary     = %q{A short summary of your extension}
  s.description = %q{A longer description of your extension}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  
  # The version of middleman-core your extension depends on
  s.add_runtime_dependency 'middleman-core', '~> 4.2', '>= 4.2.1'
  s.add_runtime_dependency 'dalli', '~> 2.7', '>= 2.7.6'
  
  # Additional dependencies
  # s.add_runtime_dependency("gem-name", "gem-version")
end
