Feature: Manage the images
  In order to make a doll
  as a user
  I want to create and manage images

  Scenario: View all the existing images
    Given I am on the images page
    And 4 images already exist
    Then I should see a table containing those 4 images

  Scenario: Create a valid image
    Given I have no images
    And I am on the images page
    When I follow "New Image"
    And I press "Choose File"
    And I upload a file
    Then I should see "New image Uploaded."
    And I should have 1 image

  Scenario: Uploading a file with the wrong extension (not .png)
    Given I visit the file upload page
    When I upload a file with the wrong extension
    Then the number of products should not change
    And I should see an error message
    And I should see the file upload page again

  Scenario: Uploading an incorrectly sized file
    Given I visit the file upload page
    When I upload a file that is not 448x600
    Then the number of products should not change
    And I should see an error message
    And I should see the file upload page again