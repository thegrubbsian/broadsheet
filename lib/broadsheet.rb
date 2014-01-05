require "broadsheet/engine"

module Broadsheet

  def configure
    yield(Config)
  end

end
