# Last updated on 
@MVP+1
@US1211188
@releaseUnknown
@iterationUnknown
Feature: US1211188 - Identify Fee Schedule

  @TC565888
  @Automated
  @Functional
  @MVP+1
  Scenario: TC565888 - [RL1]
    Given an Exari contract record exists
    When the contract record does not have a fee schedule assigned
    Then an error message is generated and returned to the user

  @TC565887
  @Automated
  @Functional
  @MVP+1
  Scenario: TC565887 - [RL0]
    Given an Exari contract record exists
    When the contract record has a fee schedule assigned
    Then the fee schedule number from the contract record is used

