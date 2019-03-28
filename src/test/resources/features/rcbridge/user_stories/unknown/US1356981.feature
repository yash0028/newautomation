# Last updated on 
@US1356981
@releaseUnknown
@iterationUnknown
Feature: US1356981 - New UCM - [ProductGroup] Rate Amount

  @TC596327
  @Manual
  @Functional
  Scenario: TC596327 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract terms include a Rate or Dollar Amount for a Product Rate Group
    Then a property is available in the Exari UCM that identifies the Rate condition for the Product Rate Group
    And the property includes the Rate value

  @TC743491
  @Manual
  @Functional
  Scenario: TC743491 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract terms include a Rate or Dollar Amount for two or more Product Rate Groups
    Then a property is available in the Exari UCM that identifies the Rate condition for each Product Rate Group
    And the property includes the Rate value for each distinct Product Rate Group

  @TC743529
  @Manual
  @Functional
  Scenario: TC743529 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract terms include a Rate or Dollar Amount for all Product Groups included in the agreement
    Then a property is available in the Exari UCM that identifies the Rate condition for all Products
    And the property includes the Rate value

  @TC743542
  @Manual
  @Functional
  Scenario: TC743542 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract terms DO NOT include a Rate or Dollar Amount for any Product Rate Group
    Then a property is available in the Exari UCM
    And the property value is NULL

  @TC743550
  @Manual
  @Functional
  Scenario: TC743550 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract terms include a Rate or Dollar Amount for a Product Rate Group
    Then a property is available in the Optum OCM that identifies the Rate condition for the Product Rate Group
    And the property includes the Rate value

  @TC743560
  @Manual
  @Functional
  Scenario: TC743560 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract terms include a Rate or Dollar Amount for two or more Product Rate Groups
    Then a property is available in the Optum OCM that identifies the Rate condition for each Product Rate Group
    And the property includes the Rate value for each distinct Product Rate Group

  @TC743567
  @Manual
  @Functional
  Scenario: TC743567 - [RL6]
    Given a valid contract exists in Exari environment
    When the contract terms include a Rate or Dollar Amount for all Product Groups included in the agreement
    Then a property is available in the Optum OCM that identifies the Rate condition for all Products
    And the property includes the Rate value

  @TC743572
  @Manual
  @Functional
  Scenario: TC743572 - [RL7]
    Given a valid contract exists in Exari environment
    When the contract terms DO NOT include a Rate or Dollar Amount for any Product Rate Group
    Then a property is available in the Optum OCM
    And the property value is NULL

