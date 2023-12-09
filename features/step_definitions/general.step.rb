Given('Enter on the {string} page') do |link|
    url = find_link(link)[:href].split('#').first
    visit(url)
end

When('I press the button {string}') do |string|
    click_button(string)
end

Then('A {string} message is then displayed on the screen') do |msg|
    xpath_expression = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[2]/font'
    element = find(:xpath, xpath_expression)
    expect(element.text).to include(msg)
end

Given(/^I am on the Mercury Tours homepage$/) do
    visit('https://demo.guru99.com/test/newtours/index.php')
end
