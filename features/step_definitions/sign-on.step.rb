Given('I am on the main page') do
    visit 'https://demo.guru99.com/test/newtours/index.php'
end

Given('Enter on the login page') do
  xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[1]/a'
  element = find(:xpath, xpath_base)
  url = element[:href].split('#').first
  visit(url)
end

# Given('I enter the following user credentials') do |string|
#   fill_in 'userName', :with => string
# end
# Given('I enter Password {string}') do |string|
#   fill_in 'password', :with => string
# end

Given("I enter the following user credentials:") do |table|
  credentials = table.rows_hash
  fill_in 'userName', with: credentials['username']
  fill_in 'password', with: credentials['password']
end

When('I press the button {string}') do |name_button|
  button = find_button(name_button)
  button.click
end

Then('A {string} message is then displayed on the screen') do |msg|
    expect(page).to have_content(msg)
end

