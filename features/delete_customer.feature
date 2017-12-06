Feature: delete a customer
  
  In a ticket system, you should be able to delete a customer
  
Scenario: You want to be able to navigate from the home page to a customer and then delete then
  Given I am on the home pages
  When I click on a "thetest" link
  Then I will be on the "customer #1" page
  When I press on the "Delete customer" link
  Then I must be on the "customers" page
  And I should not see "thetest"