class ChoiceInputPage
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
        'email' => 'pepe1137'
      }
    when 'I only enter the Password and Confirm Password fields'
      {
        'password' => '2611',
        'confirmPassword' => '2611'
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
        'password' => '2611'
      }
    when 'I enter only the Confirm Password'
      {
        'confirmPassword' => '137'
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
end