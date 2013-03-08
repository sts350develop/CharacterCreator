class Doll < ActiveRecord::Base
  attr_accessible :class, :name
  has_one :head
  has_one :body
  has_one :clothingset
end
