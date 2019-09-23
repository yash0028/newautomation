# Last updated on 
@US1356650
@releaseUnknown
@iterationUnknown
Feature: US1356650 - New UCM - [ProductGroup] Rate condition

  @TC958733
  @Manual
  @Functional
  Scenario: TC958733 - [RL0]
    Given a valid contract exists in Exari
    When a rate condition category property has one or more value
    Then a rate condition property also has one or more valid values

  @TC958749
  @Manual
  @Functional
  Scenario: TC958749 - [RL1]
    Given a valid contract exists in Exari
    When a rate condition category property is NULL value
    Then a rate condition property also is NULL value

  @TC958763
  @Manual
  @Functional
  Scenario: TC958763 - [RL2]
    Given a rate condition category property has one or more value
    When a rate condition property also has one or more valid values
    Then the contract passes validation

  @TC958776
  @Manual
  @Functional
  Scenario: TC958776 - [RL3]
    Given a rate condition category property has one or more value
    When a rate condition property has NULL value
    Then the contract does not pass validation
    And a Type 3 error created and logged
    And a message generated 'DETAILS MISSING FOR RATE CONDITION CATEGORY'

  @TC958788
  @Manual
  @Functional
  Scenario: TC958788 - [RL4]
    Given a rate condition category property is NULL value
    When a rate condition property has a value
    Then the contract does not pass validation
    And a Type 3 error created and logged
    And a message generated 'MISSING RATE CONDITION CATEGORY'
    ###

