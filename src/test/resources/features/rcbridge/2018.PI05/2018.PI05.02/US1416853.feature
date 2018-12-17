# Last updated on 
@US1416853
@2018.PI05
@2018.PI05.02
@MVP
@Maintenance
@releasePresent
@iterationPresent
Feature: US1416853 - [Continued] Setup a new Contract Configuration Service

  @TC629010
  @Manual
  @Functional
  Scenario: TC629010 - [RL0]
    Given that the Contract Configuration service has been setup
    When a test calls the service passing in VALID values for a previously installed contract
    Then the Contract Configuration service return's that contract's configuration records

  @TC630952
  @Manual
  @Functional
  Scenario: TC630952 - [RL1]
    Given that the Contract Configuration service has been setup
    When a test calls the service passing in INVALID values for a previously installed contract
    Then the Contract Configuration service does not return a contract's configuration record
    And a message generated stating 'INVALID OR MISSING SEARCH PARAMETER'

