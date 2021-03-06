module Broadsheet
  class Engine < ::Rails::Engine

    isolate_namespace Broadsheet

    config.generators do |g|
      g.test_framework :rspec, fixture: false
      g.fixture_replacement :factory_girl, dir: "spec"
      g.assets false
      g.helper false
    end

  end
end
