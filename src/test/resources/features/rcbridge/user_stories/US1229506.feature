# Last updated on 
@MVP
@US1229506
@2018.PI03
Feature: US1229506 - Med Nec clause table - Facility

  @TC564492
  @Automated
  @Functional
  Scenario: TC564492 - [RL0]
    Given the med nec clause language listed in the table
    When a clause exists in a contract
    Then the clause code is made available
