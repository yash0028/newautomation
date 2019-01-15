# Last updated on 
@MVP+1
@US1211054
@releaseUnknown
@iterationUnknown
Feature: US1211054 - Identify contract Market Number

  @TC701679
  @Manual
  @Functional
  @MVP+1
  Scenario: TC701679 - [RL0]
    Given an Exari contract record exists
    When the contract record has a market number assigned
    Then the market number from the contract record is used

  @TC701707
  @Manual
  @Functional
  @MVP+1
  Scenario: TC701707 - [RL1]
    Given an Exari contract record exists
    When the contract record does not have a market number assigned
    Then the zip code of the counter party provider record primary service location is used
    And used to determine market number via NDB zip to market number table crosswalk

