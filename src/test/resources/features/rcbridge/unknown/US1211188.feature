# Last updated on 
@MVP+1
@US1211188
@releaseUnknown
@iterationUnknown
Feature: US1211188 - Identify Fee Schedule

  @TC701696
  @Manual
  @Functional
  @MVP+1
  Scenario: TC701696 - [RL0]
    Given an Exari contract record exists
    When the contract record has a fee schedule assigned
    Then the fee schedule number from the contract record is used

  @TC701712
  @Manual
  @Functional
  @MVP+1
  Scenario: TC701712 - [RL1]
    Given an Exari contract record exists
    When the contract record does not have a fee schedule assigned
    Then an error message is generated and returned to the user

