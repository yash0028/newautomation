# Last updated on 
@US1410194
@2018.PI05
@2018.PI05.04
@releasePresent
@iterationPast
Feature: US1410194 - Identify Duplicate contract is found in NDB as Type 2 error

  @TC706022
  @Manual
  @Functional
  Scenario: TC706022 - [RL0]
    ##Scenario 1 (Identify duplicate contract found as type 2)
    Given I have submitted a contract master request
    When The response from the NDB API indicates an error due to duplicate contract found
    Then The error should be classified as a type 2 error

