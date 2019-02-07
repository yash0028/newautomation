# Last updated on 
@US1410142
@2019.PI06
@2019.PI06.01
@releasePresent
@iterationPresent
Feature: US1410142 - Identify CONTRACT VOIDED - ALL PANELS ERRORED  Type 2 error [Cosmos Dependency]

  @TC706023
  @Manual
  @Functional
  Scenario: TC706023 - [RL0]
    Given I have submitted a contract master request
    When The response from the NDB API indicates the contract voided all panels error ed
    Then The error should be classified as a type 2 error
    ###

