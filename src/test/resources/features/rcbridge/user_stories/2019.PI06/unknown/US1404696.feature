# Last updated on 
@US1404696
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1404696 - Receive and recognize contract amendment events/transactions from Exari

  @TC623344
  @Manual
  @Functional
  Scenario: TC623344 - [RL0]
    Given the OCM is subscribed to the Exari Business Event Type "ContractTerminated"
    When an "ContractTerminated" transaction is published
    Then OCM will recognize this transaction
    And OCM will trigger the data validation of the published roster data

