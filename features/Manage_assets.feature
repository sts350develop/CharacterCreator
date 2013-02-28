Feature: Manage Assets
  In order to make a doll
  as a user
  I want to create and manage assets

Scenario: Assets List
  Given I have assets
  When I go to the list of assets
  Then I should see all the assets

Scenario: Create Valid Asset
  Given I have no assets
  And I am on the list of assets
  When I follow "Upload Asset"
  And I upload a file
  Then I should see "New Asset Uploaded."
  And I should have 1 asset

