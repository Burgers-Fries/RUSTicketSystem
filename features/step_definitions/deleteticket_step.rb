Before do
  query = "INSERT INTO tickets (created_at, updated_at, title , body, open) VALUES ('#{Time.now}', '#{Time.now}', 'thetest', 'This is the test123', 'true')"
  Ticket.connection.execute(query);
  #@newticket = Ticket.new()
end

Given("I am on the ticket index") do
  visit "tickets#index"
end

When("I click on a {string} link") do |page_name|
  visit "tickets/1"
end

Then(/^I will be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content("Title")
end

When("I press on the {string} link") do |page_name|
  click_link "Destroy"
end

Then(/^I must be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end

Then("I should not see {string}") do |page_name|
  page.should have_no_content(page_name)
end