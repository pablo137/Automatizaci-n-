Given(/^I am on the Mercury Tours homepage$/) do
  page.driver.browser.manage.window.maximize
  visit('https://demo.guru99.com/test/newtours/index.php')

end

Given(/^I click the "([^"]*)" link$/) do |linkText|
  click_link(linkText)
  # sleep 10
end

Then(/^A web site under construction message$/) do
  expect(page).to have_content("This section of our web site is currently under construction. ")
end
