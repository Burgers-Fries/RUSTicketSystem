Feature: delete a ticket
  
  In a ticket system, you need to be able to delete a ticket
  
Scenario: You want to be able to navigate from the ticket page to a ticket and then delete
  Given I am on the ticket index
  When I click on a "View Ticket" link
  Then I should be on the "Ticket view" page
  When I click on the "Delete ticket" link
  Then I should be on the "ticket index" page
  And I should not see "ticket id"