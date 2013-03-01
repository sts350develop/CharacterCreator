Feature: Manage Images
  In order to make a doll
  as a user
  I want to create and manage images

Scenario: Images List
  Given I have images
  When I go to the list of images
  Then I should see a list of images

Scenario: Create Valid Image
  Given I have no images
  And I am on the list of images
  When I follow "Upload image"
  And I upload a file
  Then I should see "New image Uploaded."
  And I should have 1 image

