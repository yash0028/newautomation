# Last updated on 
@US1289476
@2018.PI05
@F205008
@releaseFuture
@iterationUnknown
Feature: US1289476 - View Contract Config Detail web page

  @TC616491
  @Manual
  @Functional
  @US1289476
  @2018.PI05
  Scenario: TC616491 - [RL0]
    Given an contract configuration detail record exists
    When a contract configuration request is initiated
    Then a web page displaying the record details is made available

  @TC616492
  @Manual
  @Functional
  @US1289476
  @2018.PI05
  Scenario: TC616492 - [RL1]
    Given an contract configuration detail record does not exist
    When a contract configuration request is initiatedi
    Then an error message is returned to the user
    And a web page is not made available

