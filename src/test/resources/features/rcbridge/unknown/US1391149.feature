# Last updated on 
@US1391149
@MVP
@Maintenance
@F236490
@releaseUnknown
@iterationUnknown
Feature: US1391149 - Validate contract data - cancel

  @TC616922
  @Manual
  @Functional
  @US1391149
  Scenario: TC616922 - [RL1]
    Given an install contract event is received
    When the contract Does Not contain at least one product group record
    Then the contract Does Not pass basic validation
    And a message generated 'CONTRACT MISSING PROVIDER product group RECORD'
    And a Type 3 error and message generated

  @TC616921
  @Manual
  @Functional
  @US1391149
  Scenario: TC616921 - [RL0]
    Given an install contract event is received
    When the contract contains at least one product group record
    Then the contract passes basic validation

  @TC616923
  @Manual
  @Functional
  @US1391149
  Scenario: TC616923 - [RL2]
    Given a product group event is received
    When the product group contains provider records with add, cancel or update
    Then the product group passes basic validation

  @TC616924
  @Manual
  @Functional
  @US1391149
  Scenario: TC616924 - [RL3]
    Given a product group event is received
    When the product group does not contain provider records with add, cancel or update
    Then theproduct group does not pass validation
    And a message generated 'product group MISSING TRANSACTION'
    And a Type 3 error and message generated

