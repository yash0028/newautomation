# Last updated on 
@US1391758
@releaseUnknown
@iterationUnknown
Feature: US1391758 - New UCM - [ProductGroup] Capitation Schedule ID

  @TC958748
  @Manual
  @Functional
  Scenario: TC958748 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract terms include Capitation Methodology for a Product Rate Group
    Then a property is available in the Exari UCM that identifies Capitation applies for the Product Rate Group
    And the property includes the Capitation Rate Schedule ID value

  @TC958761
  @Manual
  @Functional
  Scenario: TC958761 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract terms include Capitation Methodology for two or more Product Rate Groups
    Then a property is available in the Exari UCM that identifies Capitation applies for each Product Rate Group
    And the property includes the Capitation Rate Schedule ID value for each distinct Product Rate Group

  @TC958774
  @Manual
  @Functional
  Scenario: TC958774 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract terms include Capitation Methodology for all Product Groups included in the agreement
    Then a property is available in the Exari UCM that identifies Capitation applies for all Products
    And the property includes the Capitation Rate Schedule ID value

  @TC958786
  @Manual
  @Functional
  Scenario: TC958786 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract terms DO NOT include Capitation Methodology for any Product Rate Group
    Then a property is available in the Exari UCM
    And the property value is NULL

  @TC958794
  @Manual
  @Functional
  Scenario: TC958794 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract terms include Capitation Methodology for a Product Rate Group
    Then a property is available in the Optum OCM that identifies Capitation applies for the Product Rate Group
    And the property includes the Capitation Rate Schedule ID value

  @TC958804
  @Manual
  @Functional
  Scenario: TC958804 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract terms include Capitation Methodology for two or more Product Rate Groups
    Then a property is available in the Optum OCM that identifies Capitation applies for each Product Rate Group
    And the property includes the Capitation Rate Schedule ID value for each distinct Product Rate Group

  @TC958811
  @Manual
  @Functional
  Scenario: TC958811 - [RL6]
    Given a valid contract exists in Exari environment
    When the contract terms include Capitation Methodology for all Product Groups included in the agreement
    Then a property is available in the Optum OCM that identifies Capitation applies for all Products
    And the property includes the Capitation Rate Schedule ID value

  @TC958815
  @Manual
  @Functional
  Scenario: TC958815 - [RL7]
    Given a valid contract exists in Exari environment
    When the contract terms DO NOT include Capitation Methodology for any Product Rate Group
    Then a property is available in the Optum OCM
    And the property value is NULL

