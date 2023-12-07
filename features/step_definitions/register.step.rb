def get_fields(data_type)
  case data_type
  when 'I enter the fields by filling in all the fields correctly'
    {
      'firstName' => 'Godson',
      'lastName' => 'Adom',
      'phone' => '77665544',
      'userName' => 'god@pe.co ',
      'address1' => 'Final East Circumbalacion',
      'city' => 'Cochabamba',
      'state' => 'Cercado',
      'postalCode' => '591',
      'email' => 'godson',
      'password' => '137',
      'confirmPassword' => '137'
    }
  when 'I leave all the fields empty'
    {
      'firstName' => ''
    }
  when 'I only fill in the User Name field'
    {
      'email' => 'pepe1137'
    }
  when 'I only enter the Password and Confirm Password fields'
    {
      'password' => '2611',
      'confirmPassword' => '2611'
    }
  when 'I enter valid values in the User Information fields'
    {
      'email' => 'pepe2611',
      'password' => '2611',
      'confirmPassword' => '2611'
    }

  when 'I enter a different password than the confirm password'
    {
      'password' => '2611',
      'confirmPassword' => '137'
    }
  when 'I enter only the password'
    {
      'password' => '2611'
    }
  when 'I enter only the Confirm Password'
    {
      'confirmPassword' => '137'
    }
  when 'I enter a valid username and password registered'
    {
      'userName' => 'pepe',
      'password' => '123'
    }
  else
    raise ArgumentError, "Invalid data type: #{data_type}"
  end
end

def fill_in_fields(fields)
  fields.each do |field, value|
    fill_in field, with: value
  end
end

Given('{string}') do | data |
  fields = get_fields(data)
  fill_in_fields(fields)
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