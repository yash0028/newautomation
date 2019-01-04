# Last updated on 
@US1507978
@2018.PI05
@2018.PI05.04
@MVP
@Maintenance
@releasePresent
@iterationFuture
Feature: US1507978 - Receive and recognize roster events/transactions from Exari

  @TC690155
  @Manual
  @Functional
  Scenario: TC690155 - [RL0]
    Given the OCM is subscribed to the Exari Business Event Type "RosterUpdated"
    When an "UpdateRoster" transaction is published
    Then OCM will recognize this transaction
    And OCM will trigger the data validation of the published roster data

