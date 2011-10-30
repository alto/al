$:.push File.expand_path("../lib", __FILE__)
require "al/version"

Gem::Specification.new do |s|
  s.name = "al"
  s.version = Al::VERSION
  s.summary = "Ruby API Language."
  s.description = "A gem to provide a template language for creating API output."
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.md"]

  s.authors = ["Thorsten Böttger"]
  s.email = %q{boettger@mt7.de}
  s.homepage = %q{https://github.com/alto/al}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # s.add_dependency 'activesupport'
  s.add_dependency 'multi_json'
  s.add_development_dependency 'rails', '~> 3.0'
  s.add_development_dependency "capybara", ">= 0.4.0"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "assert_json"
  # s.add_development_dependency "ruby-debug19"
end
