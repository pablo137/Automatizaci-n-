Given('{string}') do | data |
  fields = @page.choice_input_page.choice_input_to_fill data
  @page.fill_the_fields_page.fill_the_fields fields
end

And('the {string} should contain only numbers') do |field|
  input_value = find_field(field).value

  if input_value.match?(/\A\d+\z/)
    puts "#{field} contains only numbers."
  else
    raise "the field #{field} It should display an alert saying: Please, enter only numbers."
  end
end

And('the {string} should contain a valid email') do |field|
  input_value = find_field(field).value

  if input_value.match?(/\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\z/)
    puts "#{field} contains a valid email address."
  else
    raise "the field #{field} It should display an alert saying: Enter a valid email."
  end
end