# Last updated on 
@US1391758
@releaseUnknown
@iterationUnknown
Feature: US1391758 - New UCM - [ProductGroup] Capitation Schedule ID

  @TC743347
  @Manual
  @Functional
  Scenario: TC743347 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract terms include Capitation Methodology for a Product Rate Group
    Then a property is available in the Exari UCM that identifies Capitation applies for the Product Rate Group
    And the property includes the Capitation Rate Schedule ID value

  @TC743511
  @Manual
  @Functional
  Scenario: TC743511 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract terms include Capitation Methodology for two or more Product Rate Groups
    Then a property is available in the Exari UCM that identifies Capitation applies for each Product Rate Group
    And the property includes the Capitation Rate Schedule ID value for each distinct Product Rate Group

  @TC743531
  @Manual
  @Functional
  Scenario: TC743531 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract terms include Capitation Methodology for all Product Groups included in the agreement
    Then a property is available in the Exari UCM that identifies Capitation applies for all Products
    And the property includes the Capitation Rate Schedule ID value

  @TC743545
  @Manual
  @Functional
  Scenario: TC743545 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract terms DO NOT include Capitation Methodology for any Product Rate Group
    Then a property is available in the Exari UCM
    And the property value is NULL

  @TC743554
  @Manual
  @Functional
  Scenario: TC743554 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract terms include Capitation Methodology for a Product Rate Group
    Then a property is available in the Optum OCM that identifies Capitation applies for the Product Rate Group
    And the property includes the Capitation Rate Schedule ID value

  @TC743562
  @Manual
  @Functional
  Scenario: TC743562 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract terms include Capitation Methodology for two or more Product Rate Groups
    Then a property is available in the Optum OCM that identifies Capitation applies for each Product Rate Group
    And the property includes the Capitation Rate Schedule ID value for each distinct Product Rate Group

  @TC743569
  @Manual
  @Functional
  Scenario: TC743569 - [RL6]
    Given a valid contract exists in Exari environment
    When the contract terms include Capitation Methodology for all Product Groups included in the agreement
    Then a property is available in the Optum OCM that identifies Capitation applies for all Products
    And the property includes the Capitation Rate Schedule ID value

  @TC743573
  @Manual
  @Functional
  Scenario: TC743573 - [RL7]
    Given a valid contract exists in Exari environment
    When the contract terms DO NOT include Capitation Methodology for any Product Rate Group
    Then a property is available in the Optum OCM
    And the property value is NULL

