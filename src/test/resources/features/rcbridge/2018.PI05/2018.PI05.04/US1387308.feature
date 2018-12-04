# Last updated on 
@US1387308
@2018.PI05
@2018.PI05.04
@MVP
@Maintenance
@releasePresent
@iterationFuture
Feature: US1387308 - Process ADD transaction to subscribing platform(s)

  @TC614198
  @Manual
  @Functional
  Scenario: TC614198 - [RL0]
    Given a RosterUpdate transaction has been published
    When the update is an add
    And the data has been validated
    Then the rate configuration would be applied to the provider in the downstream systems

