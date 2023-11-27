Given('I am on the login page') do
    visit 'https://demo.guru99.com/test/newtours/index.php'
    xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[1]/a'
    element = find(:xpath, xpath_base)
    url = element[:href].split('#').first
    visit(url)

  end

Given('I enter my user name and password valid') do
    fill_in 'userName', :with => 'pepe123'
    fill_in 'password', :with => '123'
  end

When('I press the button {string}') do |name_button|
  button = find_button(name_button)
  button.click
end

Then('A {string} message is then displayed on the screen') do |msg|
    expect(page).to have_content(msg)
end