Feature: Add a new customer
  
  A ticket system needs to be able to have customers be added.
  
Scenario: You need to be able to add customers
  Given I am on the Customer page
  When I click on the "New Customer" link
  Then I should be on the "New Customer" page
  And I will see the "name" field
  And I will see the "phone" field
  And I will see the "email" field