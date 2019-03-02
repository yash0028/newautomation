# Last updated on 
@US1395829
@releaseUnknown
@iterationUnknown
Feature: US1395829 - New UCM - Credentialing Entity Code

  @TC743382
  @Manual
  @Functional
  Scenario: TC743382 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Entity Code for each distinct Provider record

  @TC743523
  @Manual
  @Functional
  Scenario: TC743523 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Entity Name for each distinct Provider record

  @TC743534
  @Manual
  @Functional
  Scenario: TC743534 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Entity Code
    And the property value is NULL

  @TC743548
  @Manual
  @Functional
  Scenario: TC743548 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Entity Code for each distinct Provider record

  @TC743558
  @Manual
  @Functional
  Scenario: TC743558 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Entity Name for each distinct Provider record

  @TC743563
  @Manual
  @Functional
  Scenario: TC743563 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Entity Code
    And the property value is NULL
    ###

