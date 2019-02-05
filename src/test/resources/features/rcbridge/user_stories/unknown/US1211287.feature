# Last updated on 
@MVP+1
@US1211287
@releaseUnknown
@iterationUnknown
Feature: US1211287 - Identify Product Group

  @TC701658
  @Manual
  @Functional
  @MVP+1
  Scenario: TC701658 - [RL0]
    Given an Exari contract record exists
    When the contract includes product descriptions that meet contract master conditions
    Then the product code group from the product crosswalk table is used

  @TC701700
  @Manual
  @Functional
  @MVP+1
  Scenario: TC701700 - [RL1]
    Given an Exari contract record exists
    When the contract includes network descriptions that meet contract master conditions
    Then the network code from the product crosswalk table is used

