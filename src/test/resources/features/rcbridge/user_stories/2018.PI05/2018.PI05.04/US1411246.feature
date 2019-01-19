# Last updated on 
@US1411246
@2018.PI05
@2018.PI05.04
@releasePresent
@iterationPresent
Feature: US1411246 - Identify ct master is loaded to a contract that is not production ready  as type 2 error

  @TC706026
  @Manual
  @Functional
  Scenario: TC706026 - [RL0]
    ##Scenario 1 (Identify contract master is loaded to not prod ready as type 2)
    Given I have submitted a contract master request
    When The response from the NDB API indicates an error due to contract master is loaded to not prod ready
    Then The error should be classified as a type 2 error

