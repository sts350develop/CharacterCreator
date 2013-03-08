require 'factory_girl'

FactoryGirl.define do
  factory :image do
    name 'blue_skin'
    category 'base'
    z_index 1
    pathway "/images/base/blue_skin"
  end
end

FactoryGirl.define do
  factory :doll do
    dollrole "Avatar"
    name "John Smith"
    end
  end
