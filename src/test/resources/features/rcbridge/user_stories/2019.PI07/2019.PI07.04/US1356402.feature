# Last updated on 
@US1356402
@2019.PI07
@2019.PI07.04
@releasePresent
@iterationPresent
Feature: US1356402 - Market Product Program Penalty validation set (T3) [E2E]

  @TC596325
  @Manual
  @Functional
  Scenario: TC596325 - [RL0]
    Given a contract includes products that require penalty tables
    When the contract record includes a penalty table number for the product groups
    Then the contract passes validation for those product groups

  @TC611130
  @Manual
  @Functional
  Scenario: TC611130 - [RL1]
    Given a contract includes products that require penalty tables
    When the contract record does not include a penalty table number for the product groups
    Then the contract does not pass validation for those product groups
    And a message generated 'PENALTY TABLE MISSING FOR PRODUCT GROUP'
    And a Type 3 error logged

  @TC611131
  @Manual
  @Functional
  Scenario: TC611131 - [RL2]
    Given a contract includes product groups that do not require penalty tables
    When the contract record does not have a penalty table for the product group
    Then the contract passes validation for those product groups

