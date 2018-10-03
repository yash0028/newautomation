# Last updated on 
@MVP
@US1229506
@2018.PI04
@CMD2
@Priority_2
@F232444
Feature: US1229506 - Med Nec clause table - Facility

  @TC564492
  @Automated
  @Functional
  @MVP
  @US1229506
  @2018.PI04
  Scenario: TC564492 - [RL0]
    Given the med nec clause language listed in the table
    When a clause exists in a contract
    Then the clause code is made available

