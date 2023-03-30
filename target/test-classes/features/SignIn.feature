@Regression
Feature: Retail SignIn feature

  Background: 
    Given User is on retail website
    When User click on Sign in option

  @smokeTest @singinTest
  Scenario: Verify user can sign in into Retail Application
    And User enter email 'mohammadsamim2003@gmail.com' and password '5312Dorcey$'
    And User click on login button
    Then User should be logged in into Account

  #And User click on Logout option
  @singinUPTest @smokeTest
  Scenario: Verify user can create an account into Retail Website
    And User click on Create New Account button
    And User fill the signUp information with below data
      | name  | email                      | password   | confirmPassword |
      | Kohm | poroshahmakkom12@gmail.com | Dorcey123@ | Dorcey123@      |
    And User click on SignUp button
    Then User should be logged into account page
