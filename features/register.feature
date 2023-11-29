Feature: Register
  As a BDD student
  I want to test Guru99 REGISTER page
  so I learn how to use Capybara

Background:
  Given I am on the main page
  And Enter on the register page

Scenario: Validate user registration successfully
    Given I enter in the fields with:
        | firstname | Godson                    |
        | lastname  | Adom                      |
        | phone     | 77665544                  |
        | email     | god@pe.co                 |
        | address   | Final East Circumbalacion |
        | city      | Cochabamba                |
        | state     | Cercado                   |
        | postacode | 591                       |
        | username  | godson                    |
        | password  | 137                       |
        | cpassword | 137                       |
    When I press the button "submit"
    Then A "Thank you for registering" message is then displayed on the screen

Scenario: Validate user registration, leaving all fields empty.
    Given I enter in the fields with:
        | firstname |                           |
    When I press the button "submit"
    Then A "Thank you for registering" message is then displayed on the screen

Scenario: Validate user registration in the User Information section by only filling out the User Name field.
    Given I enter in the fields with:
        | username  | pepe1137                  |
    When I press the button "submit"
    Then A "Thank you for registering" message is then displayed on the screen

