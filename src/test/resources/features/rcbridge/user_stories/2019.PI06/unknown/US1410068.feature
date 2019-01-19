# Last updated on 
@US1410068
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1410068 - Identify Product Limit exceeded error as Type 2 error

  @TC706025
  @Manual
  @Functional
  Scenario: TC706025 - [RL0]
    ##Scenario 1 (Identify product limit error as type 2)
    Given I have submitted a contract master request
    When The response from the NDB API indicates an product line limit error
    Then The error should be classified as a type 2 error

