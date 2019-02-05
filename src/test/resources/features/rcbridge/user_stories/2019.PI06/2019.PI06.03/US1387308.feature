# Last updated on 
@US1387308
@2019.PI06
@2019.PI06.03
@releaseFuture
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
    And any errors derived would process within the CMD as "new contract" transactions errors process
    And the provider record/configuration will be stored within the OCM database

