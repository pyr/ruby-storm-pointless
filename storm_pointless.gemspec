# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "storm_pointless/version"

Gem::Specification.new do |s|
  s.name        = "storm-pointless"
  s.version     = StormPointless::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Pierre-Yves Ritschard"]
  s.email       = ["pyr@spootnik.org"]
  s.homepage    = ""
  s.summary     = %q{random name generator}}
  s.description = %q{randomly create names for different use cases}

  s.rubyforge_project = "storm_pointless"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
