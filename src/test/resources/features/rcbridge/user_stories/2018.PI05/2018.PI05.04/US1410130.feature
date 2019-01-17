# Last updated on 
@US1410130
@2018.PI05
@2018.PI05.04
@releasePresent
@iterationPresent
Feature: US1410130 - Identify Invalid COSMOS network number as Type 2 error

  @TC697429
  @Manual
  @Functional
  Scenario: TC697429 - [RL0]
    ##Scenario 1 (Identify invalid COSMOS network number as type 2)
    Given I have submitted a contract master request
    When The response from the NDB API indicates invalid COSMOS network number
    Then The error should be classified as a type 2 error

