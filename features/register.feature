Feature: Register
  As a regular user,
  I want to register my information
  So I can access the website and enjoy the benefits of being registered on the Mercury Tours page.

Background:
  Given Enter on the "REGISTER" page

@p
@SmokeTest
Scenario: Validate user registration successfully
  Given "I enter the fields by filling in all the fields correctly"
  When I press the button "submit"
  Then A "Thank you for registering" message is then displayed on the screen

@bug
Scenario: Validate user registration, leaving all fields empty.
  Given "I leave all the fields empty"
  When I press the button "submit"
  Then A "Please fill in the user information section" message is then displayed on the screen

@bug
Scenario: Validate user registration in the User Information section by only filling out the User Name field.
  Given "I only fill in the User Name field"
  When I press the button "submit"
  Then A "Please fill in the user information section" message is then displayed on the screen

@bug
Scenario: Validate user registration in the User Information section by filling out the User Name empty, the Password and Confirm Password fields with the same value.
  Given "I only enter the Password and Confirm Password fields"
  When I press the button "submit"
  Then A "Please fill in the user information section" message is then displayed on the screen

@SmokeTest
Scenario: Validate user registration in the User Information section by filling out the User Name, the Password and Confirm Password fields with the same value.
  Given "I enter valid values in the User Information fields"
  When I press the button "submit"
  Then A "Thank you for registering" message is then displayed on the screen

@SmokeTest
Scenario: Validate user registration alert in the User Information section by filling out the Password and Confirm Password fields with different values.
  Given "I enter a different password than the confirm password"
  When I press the button "submit"
  Then A "PAssword and con.password does not match" message is then displayed on the screen

@SmokeTest
Scenario: Validate user registration alert in the User Information section by only filling out the Password field.
  Given "I enter only the password"
  When I press the button "submit"
  Then A "PAssword and con.password does not match" message is then displayed on the screen

@SmokeTest
Scenario: Validate user registration alert in the User Information section by only filling out the Confirm Password field.
  Given "I enter only the Confirm Password"
  When I press the button "submit"
  Then A "PAssword and con.password does not match" message is then displayed on the screen

Scenario Outline: Validate fields with letters
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field      | input                                                         | verify | expected |
    | firstName  | Pacomose Alertino                                             | 17     | 17       |
    | lastName   | Lopera Alcantaras                                             | 17     | 17       |
    | address1   | Avenue Wallstreet                                             | 17     | 17       |
    | city       | Whashinton center                                             | 17     | 17       |
    | state      | United States USA                                             | 17     | 17       |

@bug
Scenario Outline: Validate fields with letters
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.
  And the '<field>' should contain only numbers

  Examples:
    | field      | input                                                         | verify | expected |
    | phone      | United States USA                                             | 17     | 17       |
    | postalCode | United States USA                                             | 17     | 17       |

@bug
Scenario Outline: Validate email field 
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.
  And the '<field>' should contain a valid email

  Examples:
    | field      | input                                                         | verify | expected |
    | userName   | #!137777111addada                                             | 17     | 17       |

@bug
Scenario Outline: Validate excessive characters on the register fields.
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field      | input                                                             | verify | expected |
    | firstName  | Lorem ipsum dolor sit amet consectetur adipisicing elit. Dele     | 61     | 61       |
    | lastName   | Lorem ipsum dolor sit amet consectetur adipisicing elit. Dele     | 61     | 61       |
    | address1   | Lorem ipsum dolor sit amet consectetur adipisicing elit. Dele     | 61     | 61       |
    | city       | Lorem ipsum dolor sit amet consectetur adipisicing elit. Dele     | 61     | 61       |

@bug
Scenario Outline: Validate excessive characters on the Phone field
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field      | input                                                             | verify | expected |
    | phone      | #!137777111addada1231                                             | 21     | 21       |

@bug
Scenario Outline: Validate excessive characters on the Email field
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field      | input                                                             | verify | expected |
    | userName   | 312231sdffsad312231sdffsad312231sdffsad312231sdffsad3122@gmil.com | 65     | 65       |

@bug
Scenario Outline: Validate excessive characters on the State/Province field.
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field      | input                                                             | verify | expected |
    | state      | 13713771137137711371377113711371377113713                         | 41     | 41       |

