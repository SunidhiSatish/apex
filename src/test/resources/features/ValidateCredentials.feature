@apex
Feature: ValidateCredentials

  @AFM-273
  Scenario: Unauthorized home page is as expected
    Given I launch the apex app
    And I verify header message is available
    And I get the available store number
    When I verify that news feed holder is present
    Then I verify tv notification title is available

  @AFM-244
  Scenario: User is unable to login successfully with invalid credentials
    Given I launch the apex app
    When I login with the invalid credentials
    Then the invalid authorization error message is displayed

  @AFM-465
  Scenario: User is unable to login successfully with invalid pin number
    Given I launch the apex app
    When I login with the valid credentials
    And I set the temporary pin number
    And I enter the wrong temporary pin number 1 times
    Then the invalid pin number error message is displayed

  @AFM-aa
  Scenario: User is unable to login successfully with invalid pin number
    Given I launch the apex app
    When I login with the valid credentials
    And I back space temporary pin number
    Then I clear the temporary pin number

  @AFM-valid
  Scenario: User is able to login successfully with valid pin number
    Given I launch the apex app
    And I login with the valid credentials
    And I set the temporary pin number
    When I confirm the temporary pin number
    Then the authenticated home page is available

  @AFM-458
  @navigate
  Scenario: User is able to see "no internet connection" warning message
    Given I launch the apex app
    And I turn OFF the internet connection
    When I navigate back to apex application
    Then I am able to see no internet connection warning message
    And I turn ON the internet connection

  @AFM-pinNumber
  Scenario: User is able to login successfully with valid pin number
    Given I launch the apex app
    And I login with the valid credentials
    And I set the temporary pin number
    When I enter the wrong temporary pin number 3 times
    Then I am able to see sign in button in the unauthorized page

  @AFM-237
  Scenario: User is able to login successfully with valid pin number
    Given I launch the apex app
    And I login with the valid credentials
    And I set the temporary pin number
    When I confirm the temporary pin number
    Then the authenticated home page is available

  @AFM-240
  Scenario: User is able to login successfully with valid pin number
    Given I launch the apex app
    When I verify header message is available
    Then I am able to see sign in button in the unauthorized page