Given('{string}') do | data |
  fields = @page.register_page.choice_input_to_fill data
  @page.register_page.fill_the_fields fields
end

And('the {string} should contain only numbers') do |field|
  @page.register_page.validate_field(field,'numbers')
end

And('the {string} should contain a valid email') do |field|
  @page.register_page.validate_field(field,'email')
end