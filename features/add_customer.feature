Feature: Add a new customer
  
  A ticket system needs to be able to have customers be added.
  
Scenario: You need to be able to add customers
  Given I am on the customer page
  When I click on the "New Customer" link
  Then I should be on the "New Customer" page
  And I should see the "Title" field
  And I should see the "Body" field