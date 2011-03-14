# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sasha/version"

Gem::Specification.new do |s|
  s.name        = "sasha"
  s.version     = Sasha::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Padilla"]
  s.email       = ["david@crowdint.com"]
  s.homepage    = "http://www.github.com/crowdint/sasha"
  s.summary     = %q{Add your current Git SHA to your Rails app response headers.}
  s.description = %q{Add your current Git SHA to your Rails app response headers.}

  s.rubyforge_project = "sasha"

  s.add_dependency 'rails'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'mocha'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
