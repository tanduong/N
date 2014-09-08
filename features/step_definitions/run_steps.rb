When(/^I visit root path$/) do
  visit root_path
end

Then(/^I should see something$/) do
  expect(page).to have_content 'Add'
end
