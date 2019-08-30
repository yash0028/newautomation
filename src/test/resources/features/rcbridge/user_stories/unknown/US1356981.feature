# Last updated on 
@US1356981
@releaseUnknown
@iterationUnknown
Feature: US1356981 - New UCM - [ProductGroup] Rate Amount

  @TC958746
  @Manual
  @Functional
  Scenario: TC958746 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract terms include a Rate or Dollar Amount for a Product Rate Group
    Then a property is available in the Exari UCM that identifies the Rate condition for the Product Rate Group
    And the property includes the Rate value

  @TC958758
  @Manual
  @Functional
  Scenario: TC958758 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract terms include a Rate or Dollar Amount for two or more Product Rate Groups
    Then a property is available in the Exari UCM that identifies the Rate condition for each Product Rate Group
    And the property includes the Rate value for each distinct Product Rate Group

  @TC958766
  @Manual
  @Functional
  Scenario: TC958766 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract terms include a Rate or Dollar Amount for all Product Groups included in the agreement
    Then a property is available in the Exari UCM that identifies the Rate condition for all Products
    And the property includes the Rate value

  @TC958780
  @Manual
  @Functional
  Scenario: TC958780 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract terms DO NOT include a Rate or Dollar Amount for any Product Rate Group
    Then a property is available in the Exari UCM
    And the property value is NULL

  @TC958792
  @Manual
  @Functional
  Scenario: TC958792 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract terms include a Rate or Dollar Amount for a Product Rate Group
    Then a property is available in the Optum OCM that identifies the Rate condition for the Product Rate Group
    And the property includes the Rate value

  @TC958802
  @Manual
  @Functional
  Scenario: TC958802 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract terms include a Rate or Dollar Amount for two or more Product Rate Groups
    Then a property is available in the Optum OCM that identifies the Rate condition for each Product Rate Group
    And the property includes the Rate value for each distinct Product Rate Group

  @TC958809
  @Manual
  @Functional
  Scenario: TC958809 - [RL6]
    Given a valid contract exists in Exari environment
    When the contract terms include a Rate or Dollar Amount for all Product Groups included in the agreement
    Then a property is available in the Optum OCM that identifies the Rate condition for all Products
    And the property includes the Rate value

  @TC958814
  @Manual
  @Functional
  Scenario: TC958814 - [RL7]
    Given a valid contract exists in Exari environment
    When the contract terms DO NOT include a Rate or Dollar Amount for any Product Rate Group
    Then a property is available in the Optum OCM
    And the property value is NULL

