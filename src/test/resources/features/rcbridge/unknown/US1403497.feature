# Last updated on 
@US1403497
@MVP
@Maintenance
@releaseUnknown
@iterationUnknown
Feature: US1403497 - Receive and recognize rate updated events/transactions from Exari

  @TC622438
  @Manual
  @Functional
  Scenario: TC622438 - [RL0]
    Given the OCM is subscribed to the Exari Business Event Type "RateUpdated"
    When an "RateUpdated" transaction is published
    Then OCM will recognize this transaction
    And OCM will trigger the data validation of the published roster data

