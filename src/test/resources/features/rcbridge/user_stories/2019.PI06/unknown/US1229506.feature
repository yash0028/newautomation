# Last updated on 
@US1229506
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1229506 - Med Nec clause table - Facility

  @TC701659
  @Manual
  @Functional
  Scenario: TC701659 - [RL0]
    Given the med nec clause language listed in the table
    When a clause exists in a contract
    Then the clause code is made available
    ###

