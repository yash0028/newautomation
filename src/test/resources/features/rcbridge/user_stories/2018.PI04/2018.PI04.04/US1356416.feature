# Last updated on 
@US1356416
@2018.PI04
@2018.PI04.04
@CMD
@Priority_2
@F224328
Feature: US1356416 - Market Product Groups implicit inclusion/exclusions

  @TC611117
  @Manual
  @Functional
  @US1356416
  @2018.PI04
  @2018.PI04.04
  Scenario: TC611117 - [RL3]
    Given a Contract Product Group is excluded (below the line)
    When the Market Product Group is included (above the line)
    Then the contract does not pass validation
    And a message generated 'PRODUCT INCLUDE AND EXCLUDE CONFLICT' generated
    And a Type 3 error logged

  @TC611115
  @Manual
  @Functional
  @US1356416
  @2018.PI04
  @2018.PI04.04
  Scenario: TC611115 - [RL1]
    Given a Contract Product Group is excluded (below the line)
    When the Market Product Group is excluded (below the line)
    Then the contract passes validation

  @TC611116
  @Manual
  @Functional
  @US1356416
  @2018.PI04
  @2018.PI04.04
  Scenario: TC611116 - [RL2]
    Given a Contract Product Group is included (above the line)
    When the Market Product Group is excluded (below the line)
    Then the contract does not pass validation
    And a message generated 'PRODUCT INCLUDE AND EXCLUDE CONFLICT' generated
    And a Type 3 error logged

  @TC596319
  @Manual
  @Functional
  @US1356416
  @2018.PI04
  @2018.PI04.04
  Scenario: TC596319 - [RL0]
    Given a Contract Product Group is included (above the line)
    When the Market Product Group is included (above the line)
    Then the contract passes validation

