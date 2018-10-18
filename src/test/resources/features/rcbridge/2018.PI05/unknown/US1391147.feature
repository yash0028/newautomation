# Last updated on 
@US1391147
@2018.PI05
@MVP
@Maintenance
@F236490
@releaseFuture
@iterationUnknown
Feature: US1391147 - Receive and recognize contract update terms from Exari

  @TC616508
  @Manual
  @Functional
  @US1391147
  @2018.PI05
  Scenario: TC616508 - [RL0]
    Given the OCM is subscribed to the Exari Business Event Type "RosterUpdated"
    When an "UpdateRoster" transaction is published
    Then OCM will recognize this transaction
    And OCM will trigger the data validation of the published roster data

