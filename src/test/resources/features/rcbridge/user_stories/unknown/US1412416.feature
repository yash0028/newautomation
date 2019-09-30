# Last updated on 
@US1412416
@releaseUnknown
@iterationUnknown
Feature: US1412416 - New UCM - Credentialing Flag

  @TC958730
  @Manual
  @Functional
  Scenario: TC958730 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Flag for each distinct Provider record

  @TC958750
  @Manual
  @Functional
  Scenario: TC958750 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Flag for each distinct Provider record

  @TC958767
  @Manual
  @Functional
  Scenario: TC958767 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Flag
    And the property value is NULL

  @TC958783
  @Manual
  @Functional
  Scenario: TC958783 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Flag for each distinct Provider record

  @TC958795
  @Manual
  @Functional
  Scenario: TC958795 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Flag for each distinct Provider record

  @TC958805
  @Manual
  @Functional
  Scenario: TC958805 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Flag
    And the property value is NULL
    ###

