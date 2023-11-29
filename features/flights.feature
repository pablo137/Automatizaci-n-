Feature: Mercury Tours Flights section
  Find flights with low fares
  Seats not available

  @vuelos
  Scenario: Find a flight
    Given I am on the Mercury Tours homepage
    And I click the "Flights" link
    When I enter flight details as shown below
      | Type:           | oneway              |
      | Passengers:     |                   2 |
      | Departing From: | Frankfurt           |
      | On:             | February  12        |
      | Arriving In:    | London              |
      | Returning:      | March  11           |
      | Service Class:  | Business            |
      | Airline:        | Blue Skies Airlines |
    And I press the CONTINUE button
    Then A web site No Seats Avaialble message

    Examples: 
      | Type:     | Passengers: | Departing From: | On:          | Arriving In:  | Returning:   | Service Class: | Airline:            |
      | roundtrip |           1 | Acapulco        | January  1   | Frankfurt     | February  12 | Coach          | No Preference       |
      | oneway    |           2 | Frankfurt       | February  12 | London        | March  11    | Business       | Blue Skies Airlines |
      # | roundtrip |           3 | London          | March  11    | New York      | April  22    | First          | Unified Airlines    |
      # | oneway    |           4 | New York        | April  22    | Paris         | May  2       | Economy class  | Pangea Airlines     |
      # | roundtrip |           1 | Paris           | May  2       | Portland      | June  12     | Business class | No Preference       |
      # | roundtrip |           2 | Portland        | June  12     | San Francisco | July  10     | First class    | Blue Skies Airlines |
      # | oneway    |           3 | San Francisco   | July  10     | Seattle       | November  27 | Economy class  | Unified Airlines    |
      # | oneway    |           4 | Seattle         | November  27 | Sydney        | December  15 | First class    | Pangea Airlines     |

# Economy class -> Coach
# Business class -> Business
# First class -> First