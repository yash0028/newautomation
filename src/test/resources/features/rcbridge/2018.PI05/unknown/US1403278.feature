# Last updated on
@US1403278
@2018.PI05
@MVP
@Maintenance
@F239628
@releaseFuture
@iterationUnknown
Feature: US1403278 - Receive and recognize roster upate events/transactions from Exari

  @TC622449
  @Manual
  @Functional
  @US1403278
  @2018.PI05
  Scenario: TC622449 - [RL0]
    Given the OCM is subscribed to the Exari Business Event Type "RosterUpdated"
    When an "UpdateRoster" transaction is published
    And there is a Cancel row included in the event publication
    Then OCM will recognize this transaction
    And OCM will trigger the data validation of the published roster data

