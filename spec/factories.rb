require 'factory_girl'

FactoryGirl.define do
  factory :image do
    name 'Blue Skin'
    category 'base'
    z_index 1
  end
end