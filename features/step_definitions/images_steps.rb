Given /^I am on the images page$/ do
  '/images'
end

Given /^(\d+) images already exist$/ do |count|
  count.to_i.times {
    FactoryGirl.create(:image)
  }
end

Then /^I should see a table containing those (\d+) images$/ do |count|
  all("table#images tr").count == count
end

Given(/^I have no images$/) do
  Image.delete_all
end

When /^(?:|I )follow "([^"]*)"$/ do |arg1|
  click_link (arg1)
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

And(/^I upload a file$/) do
  run_simple %(bundle exec #{runner_command} "User.create!(:attachment => File.open('#{fixture_path(filename)}'))")
end
