# Last updated on 
@US1395927
@releaseUnknown
@iterationUnknown
Feature: US1395927 - New UCM - Credentialing Entity Name

  @TC743440
  @Manual
  @Functional
  Scenario: TC743440 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Entity Name for each distinct Provider record

  @TC743520
  @Manual
  @Functional
  Scenario: TC743520 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Entity Name for each distinct Provider record

  @TC743533
  @Manual
  @Functional
  Scenario: TC743533 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Entity Name
    And the property value is NULL

  @TC743546
  @Manual
  @Functional
  Scenario: TC743546 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Entity Name for each distinct Provider record

  @TC743556
  @Manual
  @Functional
  Scenario: TC743556 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Entity Name for each distinct Provider record

  @TC743561
  @Manual
  @Functional
  Scenario: TC743561 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Entity Name
    And the property value is NULL

