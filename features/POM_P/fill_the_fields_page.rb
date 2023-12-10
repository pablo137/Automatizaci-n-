class FillTheFields
  include BasePage
  
  def fill_the_fields fields
    for field, value in fields
      fill_in field, with: value
    end
  end
end