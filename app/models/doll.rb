class Doll < ActiveRecord::Base
  attr_accessible :dollrole, :name
  has_one :head
  has_one :body
  has_one :clothingset
  validates :dollrole, :name, :presence => true
end
