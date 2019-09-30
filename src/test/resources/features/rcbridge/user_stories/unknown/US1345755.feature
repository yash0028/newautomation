# Last updated on 
@US1345755
@releaseUnknown
@iterationUnknown
Feature: US1345755 - New UCM - [ProductGroup] Rate Percentage

  @TC958737
  @Manual
  @Functional
  Scenario: TC958737 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract terms include a percentage payment rate (PPR) for a Product Rate Group
    Then a property is available in the Exari UCM that identifies the PPR condition for the Product Rate Group
    And the property includes the PPR value

  @TC958752
  @Manual
  @Functional
  Scenario: TC958752 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract terms include a percentage payment rate (PPR) for two or more Product Rate Groups
    Then a property is available in the Exari UCM that identifies the PPR condition for each Product Rate Group
    And the property includes the PPR value for each distinct Product Rate Group

  @TC958764
  @Manual
  @Functional
  Scenario: TC958764 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract terms include a percentage payment rate (PPR) for all Product Groups included in the agreement
    Then a property is available in the Exari UCM that identifies the PPR condition for all Products
    And the property includes the PPR value

  @TC958779
  @Manual
  @Functional
  Scenario: TC958779 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract terms DO NOT include a percentage payment rate (PPR) for any Product Rate Group
    Then a property is available in the Exari UCM
    And the property value is NULL

  @TC958791
  @Manual
  @Functional
  Scenario: TC958791 - [RL4]
    Given a valid contract exists in Exari environment
    When the contract terms include a percentage payment rate (PPR) for a Product Rate Group
    Then a property is available in the Optum OCM that identifies the PPR condition for the Product Rate Group
    And the property includes the PPR value

  @TC958801
  @Manual
  @Functional
  Scenario: TC958801 - [RL5]
    Given a valid contract exists in Exari environment
    When the contract terms include a percentage payment rate (PPR) for two or more Product Rate Groups
    Then a property is available in the Optum OCM that identifies the PPR condition for each Product Rate Group
    And the property includes the PPR value for each distinct Product Rate Group

  @TC958807
  @Manual
  @Functional
  Scenario: TC958807 - [RL6]
    Given a valid contract exists in Exari environment
    When the contract terms include a percentage payment rate (PPR) for all Product Groups included in the agreement
    Then a property is available in the Optum OCM that identifies the PPR condition for all Products
    And the property includes the PPR value

  @TC958812
  @Manual
  @Functional
  Scenario: TC958812 - [RL7]
    Given a valid contract exists in Exari environment
    When the contract terms DO NOT include a percentage payment rate (PPR) for any Product Rate Group
    Then a property is available in the Optum OCM
    And the property value is NULL

