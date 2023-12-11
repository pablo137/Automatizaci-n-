Feature: Mercury Tours Support Section
  Verify the support option functionality
  Navigate back to the homepage

  @SmokeTest
  Scenario: Enter the support section
    Given I am on the Mercury Tours homepage
    When Enter on the "SUPPORT" page
    Then I should see a web site under construction message

  @SupportToHome
  Scenario: Navigate from support back to home
    Given I am on the Mercury Tours homepage
    When Enter on the "SUPPORT" page
    And I press the BACK TO HOME button
    Then I should be back on the Mercury Tours homepage
