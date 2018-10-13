# Last updated on 
@US1356402
@2018.PI04
@2018.PI04.04
@CMD
@Priority_2
@F224328
Feature: US1356402 - Market Product Program Penalty validation set (T3)

  @TC596325
  @Manual
  @Functional
  @US1356402
  @2018.PI04
  @2018.PI04.04
  Scenario: TC596325 - [RL0]
    Given a contract includes products that require penalty tables
    When the contract record includes a penalty table number for the product groups
    Then the contract passes validation for those product groups

  @TC611131
  @Manual
  @Functional
  @US1356402
  @2018.PI04
  @2018.PI04.04
  Scenario: TC611131 - [RL2]
    Given a contract includes product groups that do not require penalty tables
    When the contract record does not have a penalty table for the product group
    Then the contract passes validation for those product groups

  @TC611130
  @Manual
  @Functional
  @US1356402
  @2018.PI04
  @2018.PI04.04
  Scenario: TC611130 - [RL1]
    Given a contract includes products that require penalty tables
    When the contract record does not include a penalty table number for the product groups
    Then the contract does not pass validation for those product groups
    And a message generated 'PENALTY TABLE MISSING FOR PRODUCT GROUP'
    And a Type 3 error logged

