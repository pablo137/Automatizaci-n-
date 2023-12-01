Feature: Several websites are under construction
    Return to home

  Background: 
    Given I am on the Mercury Tours homepage

  @contact
  Scenario: Enter the CONTACT section
    Given I click the "CONTACT" link
    Then A web site under construction message
    When I press the BACK TO HOME button
    Then I am on the Mercury Tours homepage
