Given("I am on the ticket page") do
  visit "tickets#index"
end

When("I click on this specific {string} link") do |page_name|
  click_link "Create Ticket"
end

Then(/^I will be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end

Then(/^I should see the different "([^"]*)" field$/) do |field_name|
  expect(page).to have_field(field_name)
end