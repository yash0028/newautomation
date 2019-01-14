# Last updated on 
@US1410154
@2018.PI05
@2018.PI05.04
@MVP
@Priority_2
@NDB
@CMD
@releasePresent
@iterationPresent
Feature: US1410154 - Identify when a contract line is already present with the same Contractual information (Market,IPA,FeesSched And product code  Type 2 error

  @TC697436
  @Manual
  @Functional
  Scenario: TC697436 - [RL0]
    ##Scenario 1 (Identify contract line already present with same contractual set up as type 2)
    Given I have submitted a contract master request
    When The response from the NDB API indicates an error due to existing contract line present with same contractual set up
    Then The error should be classified as a type 2 error

