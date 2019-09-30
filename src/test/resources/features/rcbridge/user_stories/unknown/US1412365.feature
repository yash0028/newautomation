# Last updated on 
@US1412365
@releaseUnknown
@iterationUnknown
Feature: US1412365 - New UCM - Credentialing Status Code

  @TC958747
  @Manual
  @Functional
  Scenario: TC958747 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Status Code for each distinct Provider record

  @TC958762
  @Manual
  @Functional
  Scenario: TC958762 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Status Code for each distinct Provider record

  @TC958775
  @Manual
  @Functional
  Scenario: TC958775 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Status Code
    And the property value is NULL

  @TC958787
  @Manual
  @Functional
  Scenario: TC958787 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Status Code for each distinct Provider record

  @TC958799
  @Manual
  @Functional
  Scenario: TC958799 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Status Name for each distinct Provider record

  @TC958808
  @Manual
  @Functional
  Scenario: TC958808 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Status Code
    And the property value is NULL
    ###

