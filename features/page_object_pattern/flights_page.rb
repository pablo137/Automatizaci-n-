class FlightPage
  include BasePage

  def enter_flight_details(details)
    details.each_pair do |key, value|
      case key
      when "Type:"
        choose_trip_type(value)
      when "Passengers:"
        select_passengers(value)
      when "Departing From:"
        select_departing_from(value)
      when "On:"
        select_departure_date(value)
      when "Arriving In:"
        select_arriving_in(value)
      when "Returning:"
        select_returning_date(value)
      when "Service Class:"
        choose_service_class(value)
      when "Airline:"
        select_airline(value)
      end
    end
  end

  def click_continue_button
    click_button("findFlights")
  end

  def click_back_to_home_button
    xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/a'
    find(:xpath, xpath).click
  end

  def no_seats_available_message_displayed?
    expected_message = "After flight finder - No Seats Avaialble"
    page.has_content?(expected_message)
  end

  private

  def choose_trip_type(type)
    find("input[type='radio'][name='tripType'][value='#{type}']").click
  end

  def select_passengers(count)
    select count, from: 'passCount'
  end

  def select_departing_from(location)
    select location, from: 'fromPort'
  end

  def select_departure_date(date)
    date_parts = date.split(' ')
    select date_parts[0], from: 'fromMonth'
    select date_parts[1], from: 'fromDay'
  end

  def select_arriving_in(location)
    select location, from: 'toPort'
  end

  def select_returning_date(date)
    date_parts = date.split(' ')
    select date_parts[0], from: 'toMonth'
    select date_parts[1], from: 'toDay'
  end

  def choose_service_class(service_class)
    find("input[type='radio'][name='servClass'][value='#{service_class}']").click
  end

  def select_airline(airline)
    select airline, from: 'airline'
  end
end
