class Category < ActiveRecord::Base
  attr_accessible :description


   belongs_to :pin
end
