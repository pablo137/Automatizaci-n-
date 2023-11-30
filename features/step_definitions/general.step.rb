Given('Enter on the {string} page') do |link|
    click_on link
    url = current_url.split('#').first
    visit(url)
end

When('I press the button {string}') do |name_button|
    button = find_button(name_button)
    button.click
end

Then('A {string} message is then displayed on the screen') do |msg|
    expect(page).to have_content(msg)
end