# Last updated on
@US1403273
@2018.PI05
@MVP
@Maintenance
@F239628
@releaseFuture
@iterationUnknown
Feature: US1403273 - Receive and recognize contract term events/transactions from Exari

  @TC622451
  @Manual
  @Functional
  @US1403273
  @2018.PI05
  Scenario: TC622451 - [RL0]
    Given the OCM is subscribed to the Exari Business Event Type "ContractTerminated"
    When an "ContractTerminated" transaction is published
    Then OCM will recognize this transaction
    And OCM will trigger the data validation of the published roster data

