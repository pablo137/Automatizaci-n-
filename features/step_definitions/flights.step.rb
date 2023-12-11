When("I enter flight details as shown below") do |table|
  data = table.rows_hash
  @page.flight_page.enter_flight_details(data)
end

When("I press the CONTINUE button") do
  @page.flight_page.click_continue_button
end

Then("A web site No Seats Available message") do
  expected_message = "After flight finder - No Seats Avaialble"
  expect(@page.flight_page.no_seats_available_message_displayed?).to be(true), "Expected '#{expected_message}' to be present on the page."
end

When("I press the yellow BACK TO HOME button") do
  @page.flight_page.click_back_to_home_button
end
