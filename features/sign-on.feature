Feature: Login
  As a regular user,
  I want to log in with my credentials
  So I can find better deals and benefits by being registered.

Background:
  Given Enter on the "SIGN-ON" page

Scenario: Validate a successfully authenticated user
  Given "I enter a valid username and password registered"    
  When I press the button "Submit"
  Then A "Login Successfully" message is then displayed on the screen

Scenario: Validate an unregistered user
  Given I enter the following user credentials:
    | username | fakeuser |
    | password | 123  |       
  When I press the button "Submit"
  Then A "Enter your userName and password correct" message is then displayed on the screen

Scenario: Validate a user with incorrect password
  Given I enter the following user credentials:
    | username | pepe |
    | password | 321  |       
  When I press the button "Submit"
  Then A "Enter your userName and password correct" message is then displayed on the screen

Scenario: Validate fields sign-on
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field    | input                                                         | verify | expected |
    | userName | Evangeline Victor                                             | 17     | 17       |
    | userName | 77733311113777733                                             | 17     | 17       |
    | userName | $###"!###!"##!"#$                                             | 17     | 17       |
    | userName | #!137777111addada                                             | 17     | 17       |
    | password | Evangeline Victor                                             | 17     | 17       |
    | password | 77733311113777733                                             | 17     | 17       |
    | password | $###"!###!"##!"#$                                             | 17     | 17       |
    | password | #!137777111addada                                             | 17     | 17       |

@bug
Scenario: Validate excessive characters on the sign-on fields.
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field    | input                                                         | verify | expected |
    | userName | Esto es un campo de sesenta y uno caracteres Esto es un campo | 61     | 61       |
    | userName | 7773331111377773331111377773331111377773331111377773331111373 | 61     | 61       |
    | userName | $###"!###!"##!"#$###"!###!"##!"#$###"!###!"##!"#$###"!###!"## | 61     | 61       |
    | userName | 137777111addadadapeepep!"#!"#!137777111addadadapeepep!"#!"#ap | 61     | 61       |
    | password | Esto es un campo de sesenta y uno caracteres Esto es un campo | 61     | 61       |
    | password | 7773331111377773331111377773331111377773331111377773331111373 | 61     | 61       |
    | password | $###"!###!"##!"#$###"!###!"##!"#$###"!###!"##!"#$###"!###!"## | 61     | 61       |
    | password | 137777111addadadapeepep!"#!"#!137777111addadadapeepep!"#!"#ap | 61     | 61       |

Scenario: Validate exception by filling in only the User Name field
  Given I enter the following user credentials:
    | username | fakeuser |
    | password |  |       
  When I press the button "Submit"
  Then A "Enter your userName and password correct" message is then displayed on the screen

Scenario: Validate exception by filling in only the Password field
  Given I enter the following user credentials:
    | username |  |
    | password | 137 |       
  When I press the button "Submit"
  Then A "Enter your userName and password correct" message is then displayed on the screen