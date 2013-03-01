class User < ActiveRecord::Base
  has_many :images
  attr_accessible :email, :password, :username
end
