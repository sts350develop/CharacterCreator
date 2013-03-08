class Authentication < ActiveRecord::Base
  attr_accessible :create, :destroy, :index, :provider, :uid, :user_id
  belongs_to :user
end


# In order to complete facebook authentication, need to register the app with facebook ,through the developers page.
# In order to do so need a SSL cert, graphics and other requirements.
# the go to config/initializers/omniauth.rb and add the APP_ID and APP_SECRET in the corresponding places.