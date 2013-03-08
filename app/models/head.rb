class Head < ActiveRecord::Base
  attr_accessible :imagename, :z_index
  belongs_to :doll
end
