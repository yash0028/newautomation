# Last updated on 
@US1391148
@MVP
@Maintenance
@F236490
@releaseUnknown
@iterationUnknown
Feature: US1391148 - Validate contract data - add

  @TC616909
  @Manual
  @Functional
  @US1391148
  Scenario: TC616909 - [RL3]
    Given a product group event is received
    When the product group does not contain provider records with add, cancel or update
    Then theproduct group does not pass validation
    And a message generated 'product group MISSING TRANSACTION'
    And a Type 3 error and message generated

  @TC616908
  @Manual
  @Functional
  @US1391148
  Scenario: TC616908 - [RL2]
    Given a product group event is received
    When the product group contains provider records with add, cancel or update
    Then the product group passes basic validation

  @TC616906
  @Manual
  @Functional
  @US1391148
  Scenario: TC616906 - [RL0]
    Given an install contract event is received
    When the contract contains at least one product group record
    Then the contract passes basic validation

  @TC616907
  @Manual
  @Functional
  @US1391148
  Scenario: TC616907 - [RL1]
    Given an install contract event is received
    When the contract Does Not contain at least one product group record
    Then the contract Does Not pass basic validation
    And a message generated 'CONTRACT MISSING PROVIDER product group RECORD'
    And a Type 3 error and message generated

