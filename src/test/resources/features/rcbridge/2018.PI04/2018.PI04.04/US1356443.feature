# Last updated on 
@US1356443
@2018.PI04
@2018.PI04.04
@CMD
@Priority_2
@F224328
@releasePresent
@iterationFuture
Feature: US1356443 - Run basic Contract and Roster Event validation

  @TC600542
  @Manual
  @Functional
  @US1356443
  @2018.PI04
  @2018.PI04.04
  Scenario: TC600542 - [RL1]
    Given an install contract event is received
    When the contract Does Not contain at least one roster record
    Then the contract Does Not pass basic validation
    And a message generated 'CONTRACT MISSING PROVIDER ROSTER RECORD'
    And a Type 3 error and message generated

  @TC600544
  @Manual
  @Functional
  @US1356443
  @2018.PI04
  @2018.PI04.04
  Scenario: TC600544 - [RL3]
    Given a roster event is received
    When the roster does not contain provider records with add, cancel or update
    Then the roster does not pass validation
    And a message generated 'ROSTER MISSING TRANSACTION'
    And a Type 3 error and message generated

  @TC600543
  @Manual
  @Functional
  @US1356443
  @2018.PI04
  @2018.PI04.04
  Scenario: TC600543 - [RL2]
    Given a roster event is received
    When the roster contains provider records with add, cancel or update
    Then the roster passes basic validation

  @TC596326
  @Manual
  @Functional
  @US1356443
  @2018.PI04
  @2018.PI04.04
  Scenario: TC596326 - [RL0]
    Given an install contract event is received
    When the contract contains at least one roster record
    Then the contract passes basic validation

