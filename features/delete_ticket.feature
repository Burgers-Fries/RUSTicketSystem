Feature: delete a ticket
  
  In a ticket system, you need to be able to delete a ticket
  
Scenario: You want to be able to navigate from the ticket page to a ticket and then delete
  Given I am on the ticket index
  When I click on a "thetest" link
  Then I will be on the "Ticket #1" page
  When I press on the "Delete ticket" link
  Then I must be on the "Tickets" page
  And I should not see "thetest"