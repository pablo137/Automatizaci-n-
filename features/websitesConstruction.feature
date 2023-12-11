Feature: Several websites are under construction
  In order to return to the Mercury Tours homepage
  As a user
  I want to navigate back from under construction sections

  @SmokeTest
  Scenario Outline: Navigate back to home from under construction sections
    Given Enter on the "<Section>" page
    And I should see a web site under construction message
    When I press the BACK TO HOME button
    Then I am on the Mercury Tours homepage

    Examples: 
      | Section      |
      | CONTACT      |
      | Hotels       |
      | Car Rentals  |
      | Destinations |
      | Vacations    |
