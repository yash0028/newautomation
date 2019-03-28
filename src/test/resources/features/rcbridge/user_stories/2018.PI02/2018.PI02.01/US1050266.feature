# Last updated on 
@CLM_UAT
@US1050266
@2018.PI02
@2018.PI02.01
@releasePast
@iterationPast
Feature: US1050266 - Transaction Coordinator Microservice

  @TC565262
  @Automated
  @Functional
  @CLM_UAT
  Scenario: TC565262 - [RL0]
    Given A transaction is initialized
    When A transaction initialization state change is received
    Then A new in-memory state is created for the transaction
    And A transaction status event is published to the transaction status topic
    Given A transaction is in progress
    When A transaction state change is received
    Then The in-memory state is updated
    And A transaction status event is published to the transaction status topic
    Given A transaction is in progress
    When A transaction final state change is received
    Then The in-memory state is updated
    And The completion criteria is fulfilled
    And A transaction status event is published to the transaction status topic
    And The in-memory state is destroyed
    Given A transaction is in progress
    When The service crashes and restarted
    Then The in-memory state is restored
    And The completion criteria is fulfilled
    And A transaction status event is published to the transaction status topic
    And The in-memory state is destroyed
    Given A transaction is in progress
    When A transaction state change is received
    And the state is not found in-memory
    Then An error message is written to the logfile

