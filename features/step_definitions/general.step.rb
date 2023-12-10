Given('Enter on the {string} page') do |link|
    url = find_link(link)[:href].split('#').first
    visit(url)
end

When('I press the button {string}') do |string|
    click_button(string)
end

Then('A {string} message is then displayed on the screen') do |msg|
    expect(page).to have_content(msg)
end

Given("I am on the Mercury Tours homepage") do
    visit('https://demo.guru99.com/test/newtours/index.php')
end

Then("I should be back on the Mercury Tours homepage") do
    homepage_url = 'https://demo.guru99.com/test/newtours/index.php'
    expect(page).to have_current_path(homepage_url, ignore_query: true)
end
