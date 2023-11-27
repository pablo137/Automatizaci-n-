Feature: Login
  As a BDD student
  I want to test Guru99 login page
  so I learn how to use Capybara
  
Background:
  Given I am on the main page
  And Enter on the login page

@SmokeTest
@maximize
Scenario: Validate a successfully authenticated user
  Given I enter the following user credentials:
    | username | pepe |
    | password | 123  |       
  When I press the button "submit"
  Then A "Login Successfully" message is then displayed on the screen

@maximize
Scenario: Validate an unregistered user
  Given I enter the following user credentials:
    | username | fakeuser |
    | password | 123  |       
  When I press the button "submit"
  Then A "Enter your userName and password correct" message is then displayed on the screen