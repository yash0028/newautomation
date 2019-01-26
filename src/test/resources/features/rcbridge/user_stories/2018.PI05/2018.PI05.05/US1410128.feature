# Last updated on 
@US1410128
@2018.PI05
@2018.PI05.05
@releasePresent
@iterationPresent
Feature: US1410128 - Identify UHCID Not effective as Type 2 error

  @TC706020
  @Manual
  @Functional
  Scenario: TC706020 - [RL0]
    ##Scenario 1 (Identify UHC-ID not effective as type 2)
    Given I have submitted a contract master request
    When The response from the NDB API indicates UHC-ID is not active
    Then The error should be classified as a type 2 error

