Feature: Add a new ticket
  
  A ticketing system needs to be able to have tickets be added.
  
Scenario: You need to be able to add tickets
  Given I am on the ticket page
  When I click on the "New Ticket" link
  Then I should be on the "New Ticket" page
  And I should see the "Title" field
  And I should see the "body" field
  