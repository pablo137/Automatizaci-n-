Given('I am on the main page') do
    visit 'https://demo.guru99.com/test/newtours/index.php'
    page.driver.browser.manage.window.maximize
end

Given('Enter on the login page') do
  xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[1]/a'
  element = find(:xpath, xpath_base)
  url = element[:href].split('#').first
  visit(url)
end

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

Given('I enter {string} with {string} and verify {float} characters') do |field, value, verify|
  fill_in field, with: value
  expect(value.length).to eq(verify)
end

When('I remark the field {string}') do |string|
  input_value = find_field(string).value
end

Then('the field {string} should have only {float} characters.') do |field, float|
  input_value = find_field(field).value
  expect(input_value.length).to eq(float)
end