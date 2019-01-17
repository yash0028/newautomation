# Last updated on 
@US1403774
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1403774 - Receive and recognize contract terminated events/transactions from Exari

  @TC622673
  @Manual
  @Functional
  Scenario: TC622673 - [RL0]
    Given the OCM is subscribed to the Exari Business Event Type "ContractTerminated"
    When an "ContractTerminated" transaction is published
    Then OCM will recognize this transaction
    And OCM will trigger the data validation of the published roster data

