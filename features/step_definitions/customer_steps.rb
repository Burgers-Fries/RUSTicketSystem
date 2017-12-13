Given("I am on the Customer page") do
  visit "Customers#index"
end

When("I click on the {string} link") do |page_name|
  click_link "Create Customer"
end

Then(/^I should be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end

Then(/^I will see the "([^"]*)" field$/) do |field_name|
  expect(page).to have_field(field_name)
end