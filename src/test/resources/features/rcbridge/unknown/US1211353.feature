# Last updated on 
@MVP+1
@US1211353
@releaseUnknown
@iterationUnknown
Feature: US1211353 - Identify Product or Product Group Network

  @TC565500
  @Automated
  @Functional
  @MVP+1
  Scenario: TC565500 - [RL2]
    Given an product code has been identified from the product crosswalk
    When the product does not require a product network code be used in order to identify a contract master
    Then there is a means to determine when this requirement does not apply

  @TC565499
  @Automated
  @Functional
  @MVP+1
  Scenario: TC565499 - [RL1]
    Given a product requires a product network code to identify a contract master
    When there is a means to determine when this requirement applies
    Then there is information available about the method or schema to identify the network
    And the identification code or schema is used

  @TC565498
  @Automated
  @Functional
  @MVP+1
  Scenario: TC565498 - [RL0]
    Given an product code has been identified from the product crosswalk
    When the product requires a product network code to identify a contract master
    Then there is a means to determine when this requirement applies

