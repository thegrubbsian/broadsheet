$:.push File.expand_path("../lib", __FILE__)

require "broadsheet/version"

Gem::Specification.new do |gem|
  gem.name        = "broadsheet"
  gem.version     = Broadsheet::VERSION
  gem.authors     = ["JC Grubbs"]
  gem.email       = ["jc@devmynd.com"]
  gem.homepage    = "http://github.com/thegrubbsian/broadsheet"
  gem.summary     = "A low-fat CMS for Rails 4 and ActiveAdmin"
  gem.description = "A low-fat CMS for Rails 4 and ActiveAdmin"
  gem.license       = "MIT"

  gem.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  gem.test_files = Dir["spec/**/*"]

  gem.add_dependency "rails", "~> 4.0.2"
  gem.add_dependency "haml-rails", "~> 0.5.3"

  gem.add_development_dependency "rspec-rails"
  gem.add_development_dependency "capybara"
  gem.add_development_dependency "factory_girl_rails"
  gem.add_development_dependency "database_cleaner"
  gem.add_development_dependency "sqlite3"
  gem.add_development_dependency "pry-rails"
end
