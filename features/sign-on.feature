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

Scenario: Validate User Name field by entering only 17 letters
  Given I enter User Name with "Evangeline Victor":   
  When I remark the field User Name
  Then the field User Name should have only 17 characters.

Scenario: Validate the User Name field when trying to enter 61 letters
  Given I enter User Name with "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Acc":   
  When I remark the field User Name
  Then the User Name field should have been reduced to 60 characters

Scenario: Validate User Name field by entering only 17 numbers
  Given I enter User Name with '77733311113777733':   
  When I remark the field User Name
  Then the field User Name should have only 17 characters.

Scenario: Validate the User Name field when trying to enter 61 numbers
  Given I enter User Name with "7773331111377773331111377773331111377773331111377773331111373":   
  When I remark the field User Name
  Then the User Name field should have been reduced to 60 characters

Scenario: Validate User Name field by entering only 17 special characters
  Given I enter User Name with '$###"!###!"##!"#$':   
  When I remark the field User Name
  Then the field User Name should have only 17 characters.

Scenario: Validate the User Name field when trying to enter 61 special characters
  Given I enter User Name with '$###"!###!"##!"#$###"!###!"##!"#$###"!###!"##!"#$###"!###!"##':   
  When I remark the field User Name
  Then the User Name field should have been reduced to 60 characters

Scenario: Validate User Name field length
  Given I enter User Name with "<input>"
  When I remark the field User Name
  Then the field User Name should have "<expected>" characters.

  Examples:
    | input                                                         | expected |
    | Evangeline Victor                                             | 17       |
    | Lorem, ipsum dolor sit amet consectetur adipisicing elit. Acc | 60       |
    | 77733311113777733                                             | 17       |
    | 7773331111377773331111377773331111377773331111377773331111373 | 60       |
    | $###"!###!"##!"#$                                             | 17       |
    | $###"!###!"##!"#$###"!###!"##!"#$###"!###!"##!"#$###"!###!"## | 60       |