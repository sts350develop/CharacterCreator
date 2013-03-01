Feature: Manage Images
  In order to make a doll
  as a user
  I want to create and manage images

Scenario: viewing existing images
  Given I am on the images page
  And 4 images already exist
  Then I should see a table containg those 4 images
  And have the option to show images
  And have the option to delete images

Scenario: Create Valid Image
  Given I have no images
  And I am on the list of images
  When I follow "Upload image"
  And I upload a file
  Then I should see "New image Uploaded."
  And I should have 1 image

