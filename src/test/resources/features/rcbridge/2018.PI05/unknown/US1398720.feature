# Last updated on 
@US1398720
@2018.PI05
@MVP
@Maintenance
@F235963
@releaseFuture
@iterationUnknown
Feature: US1398720 - Process CANCEL transaction to subscribing platform(s)

  @TC620250
  @Manual
  @Functional
  @US1398720
  @2018.PI05
  Scenario: TC620250 - [RL0]
    Given a RosterUpdate transaction has been published
    When the update is an CANCEL
    And the data has been validated
    Then the rate configurations will be timelined within the applicable platforms

