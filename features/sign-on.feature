Feature: Login
  As a BDD student
  I want to test Guru99 login page
  so I learn how to use Capybara


Background:
  Given I am on the main page
  And Enter on the login page

@SmokeTest
Scenario: Validate a successfully authenticated user
  Given I enter the following user credentials:
    | username | pepe |
    | password | 123  |       
  When I press the button "submit"
  Then A "Login Successfully" message is then displayed on the screen

Scenario: Validate an unregistered user
  Given I enter the following user credentials:
    | username | fakeuser |
    | password | 123  |       
  When I press the button "submit"
  Then A "Enter your userName and password correct" message is then displayed on the screen

Scenario: Validate a user with incorrect password
  Given I enter the following user credentials:
    | username | pepe |
    | password | 321  |       
  When I press the button "submit"
  Then A "Enter your userName and password correct" message is then displayed on the screen

Scenario: Validate fields sign-on
  Given I enter '<field>' with '<input>':   
  When I remark the field '<field>'
  Then the field User Name should have only <expected> characters.

  Examples:
    | field    | input                                                         | expected |
    | userName | Evangeline Victor                                             | 17       |
    | userName | Lorem, ipsum dolor sit amet consectetur adipisicing elit. Acc | 60       |
    | userName | 77733311113777733                                             | 17       |
    | userName | 7773331111377773331111377773331111377773331111377773331111373 | 60       |
    | userName | $###"!###!"##!"#$                                             | 17       |
    | userName | $###"!###!"##!"#$###"!###!"##!"#$###"!###!"##!"#$###"!###!"## | 60       |