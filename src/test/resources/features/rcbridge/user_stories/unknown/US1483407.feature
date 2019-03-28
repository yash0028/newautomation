# Last updated on 
@US1483407
@releaseUnknown
@iterationUnknown
Feature: US1483407 - New UCM - Credentialing Cycle Date

  @TC743508
  @Manual
  @Functional
  Scenario: TC743508 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Cycle Date for each distinct Provider record

  @TC743536
  @Manual
  @Functional
  Scenario: TC743536 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Cycle Date for each distinct Provider record

  @TC743552
  @Manual
  @Functional
  Scenario: TC743552 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Exari UCM to store Credentialing Flag
    And the property value is NULL

  @TC743565
  @Manual
  @Functional
  Scenario: TC743565 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Cycle date for each distinct Provider record

  @TC743571
  @Manual
  @Functional
  Scenario: TC743571 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract includes individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Cycle Date for each distinct Provider record

  @TC743577
  @Manual
  @Functional
  Scenario: TC743577 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract does not include individual person healthcare providers
    Then a property is available in the Optum OCM to store Credentialing Cycle Date
    And the property value is NULL
    ###

