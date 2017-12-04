Given("I am on the ticket page") do
  visit "/ticket/index"
end

When("I click on the {string} link") do |page_name|
  click_link page_name
end

Then(/^I should be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end

Then(/^I should see the "([^"]*)" field$/) do |string|
  expect(page).to have_field(field_name)
end