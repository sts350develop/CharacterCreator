class Doll < ActiveRecord::Base
  # Setup accessible (or protected) attributes for your model
  attr_accessible :dollrole, :name
  has_one :head
  has_one :body
  has_one :clothingset
  validates :dollrole, :name, :presence => true
end
