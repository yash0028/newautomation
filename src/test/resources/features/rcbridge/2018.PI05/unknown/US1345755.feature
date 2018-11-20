# Last updated on
@US1345755
@2018.PI05
@CMD
@Priority_2
@UCM
@releaseFuture
@iterationUnknown
Feature: US1345755 - New UCM - [ProductGroup] Rate Percentage

  @TC592145
  @Manual
  @Functional
  Scenario: TC592145 - [RL0]
    Given a valid contract exists in Exari environment
    When the contract terms include a percentage payment rate (PPR) for a Product Rate Group
    Then a property is available in the Exari UCM that identifies the PPR condition for the Product Rate Group
    And the property includes the PPR value

  @TC618580
  @Manual
  @Functional
  Scenario: TC618580 - [RL1]
    Given a valid contract exists in Exari environment
    When the contract terms include a percentage payment rate (PPR) for two or more Product Rate Groups
    Then a property is available in the Exari UCM that identifies the PPR condition for each Product Rate Group
    And the property includes the PPR value for each distinct Product Rate Group

  @TC618581
  @Manual
  @Functional
  Scenario: TC618581 - [RL2]
    Given a valid contract exists in Exari environment
    When the contract terms include a percentage payment rate (PPR) for all Product Groups included in the agreement
    Then a property is available in the Exari UCM that identifies the PPR condition for all Products
    And the property includes the PPR value

  @TC618582
  @Manual
  @Functional
  Scenario: TC618582 - [RL3]
    Given a valid contract exists in Exari environment
    When the contract terms DO NOT include a percentage payment rate (PPR) for any Product Rate Group
    Then a property is available in the Exari UCM
    And the property value is NULL

