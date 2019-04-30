# Last updated on 
@US1412365
@releaseUnknown
@iterationUnknown
Feature: US1412365 - New UCM - Credentialing Status Code

  @TC743355
  @Manual
  @Functional
  Scenario: TC743355 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Status Code for each distinct Provider record

  @TC743512
  @Manual
  @Functional
  Scenario: TC743512 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Status Code for each distinct Provider record

  @TC743532
  @Manual
  @Functional
  Scenario: TC743532 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Status Code
    And the property value is NULL

  @TC743544
  @Manual
  @Functional
  Scenario: TC743544 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Status Code for each distinct Provider record

  @TC743549
  @Manual
  @Functional
  Scenario: TC743549 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Status Name for each distinct Provider record

  @TC743559
  @Manual
  @Functional
  Scenario: TC743559 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Status Code
    And the property value is NULL
    ###

