# Last updated on 
@CLM_UAT
@US1050266
@2018.PI02
@2018.PI02.01
@releaseUnknown
@iterationUnknown
Feature: US1050266 - Transaction Coordinator Microservice

  @TC565262
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC565262 - [RL0]
    Given A transaction is initialized
    When A transaction initialization state change is received
    Then A new in-memory state is created for the transaction
    And A transaction status event is published to the transaction status topic

  @TC772149
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC772149 - [RL1]
    Given A transaction is in progress
    When A transaction state change is received
    Then The in-memory state is updated
    And A transaction status event is published to the transaction status topic

  @TC772151
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC772151 - [RL2]
    Given A transaction is in progress
    When A transaction final state change is received
    Then The in-memory state is updated
    And The completion criteria is fulfilled
    And A transaction status event is published to the transaction status topic
    And The in-memory state is destroyed

  @TC772152
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC772152 - [RL3]
    Given A transaction is in progress
    When The service crashes and restarted
    Then The in-memory state is restored
    And The completion criteria is fulfilled
    And A transaction status event is published to the transaction status topic
    And The in-memory state is destroyed

  @TC772153
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC772153 - [RL4]
    Given A transaction is in progress
    When A transaction state change is received
    And the state is not found in-memory
    Then An error message is written to the logfile

