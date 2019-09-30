# Last updated on 
@US1395927
@releaseUnknown
@iterationUnknown
Feature: US1395927 - New UCM - Credentialing Entity Name

  @TC958732
  @Manual
  @Functional
  Scenario: TC958732 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Entity Name for each distinct Provider record

  @TC958751
  @Manual
  @Functional
  Scenario: TC958751 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Entity Name for each distinct Provider record

  @TC958765
  @Manual
  @Functional
  Scenario: TC958765 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Entity Name
    And the property value is NULL

  @TC958777
  @Manual
  @Functional
  Scenario: TC958777 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Entity Name for each distinct Provider record

  @TC958789
  @Manual
  @Functional
  Scenario: TC958789 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Entity Name for each distinct Provider record

  @TC958800
  @Manual
  @Functional
  Scenario: TC958800 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Entity Name
    And the property value is NULL

