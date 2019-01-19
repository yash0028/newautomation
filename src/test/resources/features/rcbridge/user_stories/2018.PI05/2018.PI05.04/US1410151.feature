# Last updated on 
@US1410151
@2018.PI05
@2018.PI05.04
@releasePresent
@iterationPresent
Feature: US1410151 - Identify THERE IS AN EXISTING CONTRACT WITHIN THIS DATE RANGE  Type 2 error

  @TC706029
  @Manual
  @Functional
  Scenario: TC706029 - [RL0]
    ##Scenario 1 (Identify there is an existing contract with this date range error as type 2)
    Given I have submitted a contract master request
    When The response from the NDB API indicates a existing contract within date range
    Then The error should be classified as a type 2 error

