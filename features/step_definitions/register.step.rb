def validate_field(field, type_validation)
  input_value = find_field(field).value

  condition = {
    'numbers' => input_value.match?(/\A\d+\z/),
    'email' => input_value.match?(/\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\z/)
  }

  case type_validation
  when 'numbers'
    valid_message = 'Contains only numbers.'
    error_message = 'Please, enter only numbers.'
  when 'email'
    valid_message = 'Contains a valid email address.'
    error_message = 'Enter a valid email.'
  else
    raise "Invalid validation type for field: #{type_validation}"
  end

  if condition[type_validation]
    puts "#{field} #{valid_message}"
  else
    raise "The field #{field} should display an alert saying: #{error_message}"
  end
end


Given('{string}') do | data |
  fields = @page.choice_input_page.choice_input_to_fill data
  @page.fill_the_fields_page.fill_the_fields fields
end

And('the {string} should contain only numbers') do |field|
  # validate_field(field,'numbers')
  @page.validate_field_page.validate_field(field,'numbers')
end

And('the {string} should contain a valid email') do |field|
  @page.validate_field_page.validate_field(field,'email')
end