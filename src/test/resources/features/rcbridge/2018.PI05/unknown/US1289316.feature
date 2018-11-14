# Last updated on 
@US1289316
@2018.PI05
@releaseFuture
@iterationUnknown
Feature: US1289316 - View Contract Config Summary web page

  @TC616510
  @Manual
  @Functional
  Scenario: TC616510 - [RL1]
    Given an contract configuration summary record does not exist
    When a contract configuration request is initiated from within Exari
    Then an error message is returned to the user
    And a web page is not made available

  @TC616509
  @Manual
  @Functional
  Scenario: TC616509 - [RL0]
    Given an contract configuration summary record exists
    When a contract configuration request is initiated from within Exari
    Then a web page displaying the record is made available

