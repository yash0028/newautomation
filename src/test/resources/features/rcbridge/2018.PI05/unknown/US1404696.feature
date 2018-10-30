# Last updated on 
@US1404696
@2018.PI05
@MVP
@Maintenance
@F235990
@releaseFuture
@iterationUnknown
Feature: US1404696 - Receive and recognize contract amendment events/transactions from Exari

  @TC623344
  @Manual
  @Functional
  @US1404696
  @2018.PI05
  Scenario: TC623344 - [RL0]
    Given the OCM is subscribed to the Exari Business Event Type "ContractTerminated"
    When an "ContractTerminated" transaction is published
    Then OCM will recognize this transaction
    And OCM will trigger the data validation of the published roster data

