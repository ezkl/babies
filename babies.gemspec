# -*- encoding: utf-8 -*-
require File.expand_path('../lib/babies/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ezekiel Templin"]
  gem.email         = ["zeke@templ.in"]
  gem.description   = %q{A Ruby interface to Taobao's undocumented mobile API.}
  gem.summary       = %q{Unable to get a real Taobao API account? Give this one a try.}
  gem.homepage      = "http://ezkl.github.com/babies"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "babies"
  gem.require_paths = ["lib"]
  gem.version       = Babies::VERSION
  
  gem.add_dependency("faraday", "= 0.8.0.rc2")
  gem.add_dependency("faraday_middleware")
  gem.add_development_dependency("rspec", "~> 2.8.0")
  gem.add_development_dependency("vcr",   "~> 2.0")
end
