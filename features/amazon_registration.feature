Feature: Amazon Registration & Authentication

@reg_test1
Scenario: Accessing the home page and reaching the signup page
  Given I access the amazon UK home page using a temporary email
  When I click on the sign in link in the navbar
  Then I should be directed to the authentication page

@reg_test2
Scenario: Signing in using unregistered email address
  Given I access the amazon UK home page using a temporary email
  When I click on the sign in link in the navbar
  And I enter the temporary email address in email input
  Then I should get an error message
