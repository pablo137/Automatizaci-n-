Feature: Guru99 Demo Page
  As a BDD student
  I want to test Guru99 login page
  so I learn how to use Capybara
  
Background:
  Given I am on the login page


@maximize
Scenario: Validate a successfully authenticated user       
  Given I enter my user name and password valid
  When I press the button "submit"
  Then A "Login Successfully" message is then displayed on the screen