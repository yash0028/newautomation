# Last updated on 
@US1410107
@2018.PI05
@2018.PI05.04
@releasePresent
@iterationPresent
Feature: US1410107 - Identify No Active master found max error as Type 2 error

  @TC697426
  @Manual
  @Functional
  Scenario: TC697426 - [RL0]
    Given I have submitted a contract master request
    When The response from the NDB API indicates no active contract master was found
    Then The error should be classified as a type 2 error
    ###

