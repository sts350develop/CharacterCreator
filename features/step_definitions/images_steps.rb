Given /^I am on the images page$/ do
  '/images'
end

Given /^(\d+) images already exist$/ do |count|
  count.to_i.times {
    FactoryGirl.create(:image)
  }
end

Then /^I should see a table containg those (\d+) images$/ do |count|
  page.all('table#imagesTable tr').count.should == count
end