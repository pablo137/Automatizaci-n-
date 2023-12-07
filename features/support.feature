Feature: Mercury Tours Verify Support
  Click on the support option
  Back to Home

  Scenario: Enter the support section
    Given Enter on the "SUPPORT" page
    Then A web site under construction message

  @supportToHome
  Scenario: The support a back to home
    Given I am on the Mercury Tours homepage
    And Enter on the "SUPPORT" page
    When I press the BACK TO HOME button
    Then I am on the Mercury Tours homepage
