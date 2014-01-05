require "broadsheet/engine"

module Broadsheet

  RENDERING_ENGINES = ["markdown", "html", "erb"]

  def configure
    yield(Config)
  end

end
