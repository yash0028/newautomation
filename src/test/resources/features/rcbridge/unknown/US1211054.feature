# Last updated on
@MVP+1
@US1211054
@F205008
@releaseUnknown
@iterationUnknown
Feature: US1211054 - Identify contract Market Number

  @TC565345
  @Automated
  @Functional
  @MVP+1
  @US1211054
  Scenario: TC565345 - [RL0]
    Given an Exari contract record exists
    When the contract record has a market number assigned
    Then the market number from the contract record is used

  @TC565346
  @Automated
  @Functional
  @MVP+1
  @US1211054
  Scenario: TC565346 - [RL1]
    Given an Exari contract record exists
    When the contract record does not have a market number assigned
    Then the zip code of the counter party provider record primary service location is used
    And used to determine market number via NDB zip to market number table crosswalk

