# Last updated on 
@MVP+1
@US1211287
@F205008
Feature: US1211287 - Identify Product Group

  @TC564761
  @Automated
  @Functional
  @MVP+1
  @US1211287
  Scenario: TC564761 - [RL0]
    Given an Exari contract record exists
    When the contract includes product descriptions that meet contract master conditions
    Then the product code group from the product crosswalk table is used

  @TC564762
  @Automated
  @Functional
  @MVP+1
  @US1211287
  Scenario: TC564762 - [RL1]
    Given an Exari contract record exists
    When the contract includes network descriptions that meet contract master conditions
    Then the network code from the product crosswalk table is used

