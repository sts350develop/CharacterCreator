class Image < ActiveRecord::Base
  belongs_to :user
  attr_accessible :category, :name, :z_index, :pathway, :uploaded
  has_attached_file :uploaded, :styles => { :small => "32x32#" },
      :url  => "/assets/images/:id/:style/:basename.:extension",
      :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"

end
