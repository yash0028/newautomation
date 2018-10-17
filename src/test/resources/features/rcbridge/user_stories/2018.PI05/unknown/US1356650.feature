# Last updated on 
@US1356650
@2018.PI05
@CMD
@Priority_2
@UCM
@F231564
Feature: US1356650 - New UCM - [ProductGroup] Rate condition

  @TC596316
  @Manual
  @Functional
  @US1356650
  @2018.PI05
  Scenario: TC596316 - [RL0]
    Given a rate differential does not apply to a contract
    When a rate condition category property has value
    Then a rate condition property also has a valid value

