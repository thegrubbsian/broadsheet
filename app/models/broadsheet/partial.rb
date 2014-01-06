module Broadsheet
  class Partial < ActiveRecord::Base

    before_save :set_slug

    def set_slug
      self.slug = name.parameterize.underscore
    end

    def path
      "partial/_#{slug}"
    end

  end
end
