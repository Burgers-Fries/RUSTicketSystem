
Given("I am on the ticket index") do
  visit "tickets#index"
end

When("I click on a {string} link") do |page_name|
  visit "tickets/1"
  click_link "Destroy"
end

Then("I should not see {string}") do |page_name|
  page.should have_no_content(page_name)
end