Given("I enter the following user credentials:") do |table|
  credentials = table.rows_hash
  fill_in 'userName', with: credentials['username']
  fill_in 'password', with: credentials['password']
end

Given('I enter {string} with {string} and verify {float} characters') do |field, value, verify|
  fill_in field, with: value
  expect(value.length).to eq(verify)
end

When('I remark the field {string}') do |field|
  input_value = find_field(field).value
end

Then('the field {string} should have only {float} characters.') do |field, expected|
  input_value = find_field(field).value
  actual_length = input_value.length

  if actual_length != expected
    raise "it should display an alert message that says: Only a maximum of #{actual_length} characters in the [#{field}] field"
  else
    expect(actual_length).to eq(expected)
  end
end