$:.push File.expand_path("../lib", __FILE__)

require "broadsheet/version"

Gem::Specification.new do |s|
  s.name        = "broadsheet"
  s.version     = Broadsheet::VERSION
  s.authors     = ["JC Grubbs"]
  s.email       = ["jc@devmynd.com"]
  s.homepage    = "http://github.com/thegrubbsian/broadsheet"
  s.summary     = "A low-fat CMS for Rails 4 and ActiveAdmin"
  s.description = "A low-fat CMS for Rails 4 and ActiveAdmin"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.0.2"

  s.add_development_dependency "pg"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "database_cleaner"
end
