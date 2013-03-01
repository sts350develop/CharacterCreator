Given /^I have images$/ do
  user = User.create
  image = user.images.build
  image.save
end

When /^I go to the list of images$/ do
  '/images'
end

Then /^I should see a list of images$/ do
  Image.all.length.should page.length
end