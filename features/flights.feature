Feature: Mercury Tours Flights section
  Find flights with low fares
  Seats not available

  @vuelos
  Scenario: Find a flight
    Given I am on the Mercury Tours homepage
    And I click the "Flights" link
    When I enter flight details as shown below
      | Type:           | Round Trip    |
      | Passengers:     |             1 |
      | Departing From: | Acapulco      |
      | On:             | July  12      |
      | Arriving In:    | Acapulco      |
      | Returning:      | July  15      |
      | Service Class:  | Economy class |
      | Airline:        | No Preference |
    And I press the CONTINUE button
    Then A web site No Seats Avaialble message

    Examples: 
      | Type:      | Passengers: | Departing From: | On:          | Arriving In:  | Returning:   | Service Class: | Airline:            |
      | Round Trip |           1 | Acapulco        | January  1   | Frankfurt     | February  12 | Economy class  | No Preference       |
      | One Way    |           2 | Frankfurt       | February  12 | London        | March  11    | Business class | Blue Skies Airlines |
      | Round Trip |           3 | London          | March  11    | New York      | April  22    | First class    | Unified Airlines    |
      | One Way    |           4 | New York        | April  22    | Paris         | May  2       | Economy class  | Pangea Airlines     |
      # | Round Trip |           1 | Paris           | May  2       | Portland      | June  12     | Business class | No Preference       |
      # | Round Trip |           2 | Portland        | June  12     | San Francisco | July  10     | First class    | Blue Skies Airlines |
      # | One Way    |           3 | San Francisco   | July  10     | Seattle       | November  27 | Economy class  | Unified Airlines    |
      # | One Way    |           4 | Seattle         | November  27 | Sydney        | December  15 | First class    | Pangea Airlines     |
