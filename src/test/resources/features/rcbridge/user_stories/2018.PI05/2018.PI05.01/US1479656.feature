# Last updated on 
@US1479656
@2018.PI05
@2018.PI05.01
@releasePast
@iterationPast
Feature: US1479656 - [Unfinished] Setup a new Contract Configuration Service

  @TC672453
  @Manual
  @Functional
  Scenario: TC672453 - [RL0]
    Given that the Contract Configuration service has been setup
    When a test calls the service passing in VALID values for a previously installed contract
    Then the Contract Configuration service return's that contract's configuration records

  @TC672454
  @Manual
  @Functional
  Scenario: TC672454 - [RL1]
    Given that the Contract Configuration service has been setup
    When a test calls the service passing in INVALID values for a previously installed contract
    Then the Contract Configuration service does not return a contract's configuration record
    And a message generated stating 'INVALID OR MISSING SEARCH PARAMETER'

