# Last updated on 
@US1410059
@2018.PI05
@2018.PI05.04
@releaseUnknown
@iterationUnknown
Feature: US1410059 - Identify invalid date code from COSMOS as Type 2 error

  @TC705158
  @Manual
  @Functional
  Scenario: TC705158 - [RL0]
    Given I have submitted a contract master request
    When The response from the NDB API for COSMOS indicates an invalid date
    Then The error should be classified as a type 2 error
    ###

