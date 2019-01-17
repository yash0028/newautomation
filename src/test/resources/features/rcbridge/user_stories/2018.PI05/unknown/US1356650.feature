# Last updated on 
@US1356650
@2018.PI05
@releasePresent
@iterationUnknown
Feature: US1356650 - New UCM - [ProductGroup] Rate condition

  @TC596316
  @Manual
  @Functional
  Scenario: TC596316 - [RL0]
    Given a valid contract exists in Exari
    When a rate condition category property has one or more value
    Then a rate condition property also has one or more valid values

  @TC611977
  @Manual
  @Functional
  Scenario: TC611977 - [RL1]
    Given a valid contract exists in Exari
    When a rate condition category property is NULL value
    Then a rate condition property also is NULL value

  @TC618577
  @Manual
  @Functional
  Scenario: TC618577 - [RL2]
    Given a rate condition category property has one or more value
    When a rate condition property also has one or more valid values
    Then the contract passes validation

  @TC618578
  @Manual
  @Functional
  Scenario: TC618578 - [RL3]
    Given a rate condition category property has one or more value
    When a rate condition property has NULL value
    Then the contract does not pass validation
    And a Type 3 error created and logged
    And a message generated 'DETAILS MISSING FOR RATE CONDITION CATEGORY'

  @TC618579
  @Manual
  @Functional
  Scenario: TC618579 - [RL4]
    Given a rate condition category property is NULL value
    When a rate condition property has a value
    Then the contract does not pass validation
    And a Type 3 error created and logged
    And a message generated 'MISSING RATE CONDITION CATEGORY'
    ###

