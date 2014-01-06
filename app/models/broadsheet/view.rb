module Broadsheet
  class View < ActiveRecord::Base

    belongs_to :layout

    before_save :set_slug

    def set_slug
      self.slug = name.parameterize.underscore
    end

    def path
      "view/#{slug}"
    end

  end
end
