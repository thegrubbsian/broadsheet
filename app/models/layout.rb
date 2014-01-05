class Layout < ActiveRecord::Base

  has_and_belongs_to_many :stylesheets

end
