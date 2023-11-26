When(/^I enter flight details as shown below$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
    # when "Type:"
    #   choose('roundtrip')
    when "Passengers:"
      select value, from: 'passCount'
    when "Departing From:"
      select value, from: 'fromPort'
    when "On:"
      select 'July', from: 'fromMonth'
      select '12', from: 'fromDay'
    when "Arriving In:"
      select 'New York', from: 'toPort'
    when "Returning:"
      select 'December', from: 'toMonth'
      select '3', from: 'toDay'
    # when "Service Class:"
    #   choose('Business')
    when "Airline:"
      select 'Blue Skies Airlines', from: 'airline'
    end
  end
  sleep 2
end


When(/^I press the CONTINUE button$/) do
  xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[14]/td/input'
  find(:xpath, xpath).click
  sleep 2
end

Then(/^A web site No Seats Avaialble message$/) do
  expected_message = "After flight finder - No Seats Avaialble"
  expect(page).to have_content(expected_message)
  sleep 2
end
