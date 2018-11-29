# Last updated on 
@US1398720
@2018.PI05
@2018.PI05.04
@MVP
@Maintenance
@releasePresent
@iterationFuture
Feature: US1398720 - Process CANCEL transaction to subscribing platform(s)

  @TC620250
  @Manual
  @Functional
  Scenario: TC620250 - [RL0]
    Given a RosterUpdate transaction has been published
    When the update is an CANCEL
    And the data has been validated
    Then the rate configurations will be timelined within the applicable platforms

