Before do
  query = "INSERT INTO customers (created_at, updated_at, title , body, open) VALUES ('#{Time.now}', '#{Time.now}', 'thetest', 'This is the test123', 'true')"
  customer.connection.execute(query);
  #@newcustomer = customer.new()
end

Given("I am on the customer index") do
  visit "customers#index"
end

When("I click on a {string} page") do |page_name|
  visit "customers/1"
end

Then(/^I will be on this "([^"]*)" page$/) do |page_name|
  expect(page).to have_content("Title")
end

When("I will press on the {string} link") do |page_name|
  click_link "Destroy"
end

Then(/^I will then be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end

Then("I should and will not see {string}") do |page_name|
  page.should have_no_content(page_name)
end