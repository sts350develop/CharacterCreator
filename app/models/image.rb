class Image < ActiveRecord::Base
  belongs_to :user
  attr_accessible :category, :name, :z_index
end
