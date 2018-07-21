Feature: Amazon Registration

Scenario: Accessing the home page and reaching the signup page
  Given I access the amazon UK home page
    And I wish to register as a new user
  When I click on the sign in link in the navbar
  Then I shoudl be directed to the authentication page
