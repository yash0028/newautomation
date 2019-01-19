# Last updated on 
@US1410161
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1410161 - Identify CAP IND MUST EQUAL F AS CAP-MODELType 2 error

  @TC706024
  @Manual
  @Functional
  Scenario: TC706024 - [RL0]
    Given I have submitted a contract master request
    When The response from the NDB API indicates an error due to cap indicator must equal F
    Then The error should be classified as a type 2 error
    ###

