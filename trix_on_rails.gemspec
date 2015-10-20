$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "trix_on_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "trix_on_rails"
  s.version     = TrixOnRails::VERSION
  s.authors     = ["rolf"]
  s.email       = ["rolf@l-plan.nl"]
  s.homepage    = "http://github.com/l-plan/trix_on_rails"
  s.summary     = "this gem adds basecamps's trix.js to the assets-pipeline"
  s.description = "this gem adds basecamps's trix.js to the assets-pipeline"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.0.0.alpha"

  s.add_development_dependency "mysql2"
end
