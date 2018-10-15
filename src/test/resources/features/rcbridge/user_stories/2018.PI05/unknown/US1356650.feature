# Last updated on 
@US1356650
@2018.PI05
@Priority_2
@UCM
@CMD
@F231564
Feature: US1356650 - New UCM - [ProductGroup] Rate condition

  @TC611977
  @Manual
  @Functional
  @US1356650
  @2018.PI05
  Scenario: TC611977 - [RL1]
    Given a rate differential does not apply to a contract
    When a rate condition category property has a value
    Then a rate condition property also has a value

