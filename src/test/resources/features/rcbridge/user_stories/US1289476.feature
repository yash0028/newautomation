# Last updated on 
@US1289476
@2018.PI04
Feature: US1289476 - View Contract Config Detail web page

  @TC564806
  @Automated
  @Functional
  Scenario: TC564806 - [RL1]
    Given an contract configuration detail record does not exist
    When a contract configuration request is initiatedi
    Then an error message is returned to the user
    And a web page is not made available

  @TC564805
  @Automated
  @Functional
  Scenario: TC564805 - [RL0]
    Given an contract configuration detail record exists
    When a contract configuration request is initiated
    Then a web page displaying the record details is made available
