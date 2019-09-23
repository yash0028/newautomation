# Last updated on 
@US1395829
@releaseUnknown
@iterationUnknown
Feature: US1395829 - New UCM - Credentialing Entity Code

  @TC958740
  @Manual
  @Functional
  Scenario: TC958740 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Entity Code for each distinct Provider record

  @TC958754
  @Manual
  @Functional
  Scenario: TC958754 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Entity Name for each distinct Provider record

  @TC958768
  @Manual
  @Functional
  Scenario: TC958768 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Entity Code
    And the property value is NULL

  @TC958778
  @Manual
  @Functional
  Scenario: TC958778 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Entity Code for each distinct Provider record

  @TC958790
  @Manual
  @Functional
  Scenario: TC958790 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Entity Name for each distinct Provider record

  @TC958798
  @Manual
  @Functional
  Scenario: TC958798 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Entity Code
    And the property value is NULL
    ###

