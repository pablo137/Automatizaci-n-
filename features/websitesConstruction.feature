Feature: Several websites are under construction
    Return to home

  Background: 
    Given I am on the Mercury Tours homepage

  @CONTACT
  Scenario: Enter the CONTACT section
    Given I click the "CONTACT" link
    Then A web site under construction message
    When I press the BACK TO HOME button
    Then I am on the Mercury Tours homepage

  @Hotels
  Scenario: Enter the Hotels section
    Given I click the "Hotels" link
    Then A web site under construction message
    When I press the BACK TO HOME button
    Then I am on the Mercury Tours homepage

  @Car_Rentals
  Scenario: Enter the Car Rentals section
    Given I click the "Car Rentals" link
    Then A web site under construction message
    When I press the BACK TO HOME button
    Then I am on the Mercury Tours homepage

  @Destinations
  Scenario: Enter the Destinations section that is under construction
    Given I click the "Destinations" link
    Then A web site under construction message
    When I press the BACK TO HOME button
    Then I am on the Mercury Tours homepage

  @Vacations
  Scenario: Enter the Vacations section that is under construction
    Given I click the "Vacations" link
    Then A web site under construction message
    When I press the BACK TO HOME button
    Then I am on the Mercury Tours homepage
