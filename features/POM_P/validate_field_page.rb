class ValidateField
  include BasePage
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