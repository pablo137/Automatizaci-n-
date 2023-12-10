class RegisterPage
  include BasePage
  
  def choice_input_to_fill data_type
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
        'email' => ENV['USER'],
        'password' => ENV['PASS'],
        'confirmPassword' => ENV['CPASS']
      }
    when 'I leave all the fields empty'
      {
        'firstName' => ''
      }
    when 'I only fill in the User Name field'
      {
        'email' => ENV['USER3']
      }
    when 'I only enter the Password and Confirm Password fields'
      {
        'password' => ENV['PASS1'],
        'confirmPassword' => ENV['CPASS1']
      }
    when 'I enter valid values in the User Information fields'
      {
        'email' => ENV['USER1'],
        'password' => ENV['PASS1'],
        'confirmPassword' => ENV['CPASS1'] 
      }
  
    when 'I enter a different password than the confirm password'
      {
        'password' => ENV['PASS1'],
        'confirmPassword' => ENV['CPASS'] 
      }
    when 'I enter only the password'
      {
        'password' => ENV['PASS1']
      }
    when 'I enter only the Confirm Password'
      {
        'confirmPassword' => ENV['CPASS']
      }
    when 'I enter a valid username and password registered'
      {
        'userName' => ENV['USER2'],
        'password' => ENV['PASS2'] 
      }
    else
      raise ArgumentError, "Invalid data type: #{data_type}"
    end
  end

  def fill_the_fields fields
    for field, value in fields
      fill_in field, with: value
    end
  end

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
end