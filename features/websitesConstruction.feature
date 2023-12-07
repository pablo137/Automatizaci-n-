Feature: Several websites are under construction
    Return to home


  Scenario Outline: Enter a section
    Given Enter on the "<Section>" page
    And A web site under construction message
    When I press the BACK TO HOME button
    Then I am on the Mercury Tours homepage

    Examples: 
      | Section      |
      | CONTACT      |
      | Hotels       |
      | Car Rentals  |
      | Destinations |
      | Vacations    |
