# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "try_send/version"

Gem::Specification.new do |s|
  s.name        = "try_send"
  s.version     = TrySend::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Gary Greyling"]
  s.email       = ["greyling.gary@gmail.com"]
  s.homepage    = "http://github.com/mpowered/try_send"
  s.summary     = %q{Uninterrupted method chaining}
  s.description = %q{Create method chains with optional and fail safe segments}

  s.rubyforge_project = "try_send"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
