# Last updated on 
@US1412416
@releaseUnknown
@iterationUnknown
Feature: US1412416 - New UCM - Credentialing Flag

  @TC743513
  @Manual
  @Functional
  Scenario: TC743513 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Flag for each distinct Provider record

  @TC743543
  @Manual
  @Functional
  Scenario: TC743543 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Flag for each distinct Provider record

  @TC743555
  @Manual
  @Functional
  Scenario: TC743555 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Flag
    And the property value is NULL

  @TC743566
  @Manual
  @Functional
  Scenario: TC743566 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Flag for each distinct Provider record

  @TC743574
  @Manual
  @Functional
  Scenario: TC743574 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Flag for each distinct Provider record

  @TC743578
  @Manual
  @Functional
  Scenario: TC743578 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Flag
    And the property value is NULL
    ###

