class Image < ActiveRecord::Base
  require 'RMagick'
  belongs_to :user
  attr_accessible :category, :name, :z_index, :pathway, :uploaded
  has_attached_file :uploaded, :styles => { :small => "150x150>" },
      :url  => "/assets/images/:id/:style/:basename.:extension",
      :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"

end
