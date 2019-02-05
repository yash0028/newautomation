# Last updated on 
@US1408571
@2018.PI05
@2018.PI05.05
@releasePresent
@iterationPresent
Feature: US1408571 - Identify sanction error code from NDB as Type 2 error

  @TC697432
  @Manual
  @Functional
  Scenario: TC697432 - [RL0]
    Given I have submitted a contract master request
    When The response from the NDB API indicates and error due to the provider has an active sanction
    Then The error should be classified as a type 2 error
    ###

