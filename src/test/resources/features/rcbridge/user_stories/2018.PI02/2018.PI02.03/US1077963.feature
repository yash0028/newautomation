# Last updated on 
@US1077963
@2018.PI02
@2018.PI02.03
@releasePast
@iterationPast
Feature: US1077963 - Transaction Status Update and Connect Database

  @TC701623
  @Manual
  @Functional
  Scenario: TC701623 - [RL0]
    Given A transaction is in progress
    When a transaction status event is received
    Then Write the updates to the database

  @TC701633
  @Manual
  @Functional
  Scenario: TC701633 - [RL1]
    Given A transaction is in progress
    When a transaction status event is received
    And The transaction data is corrupted
    Then Write a message to an error log

  @TC701639
  @Manual
  @Functional
  Scenario: TC701639 - [RL2]
    Given A transaction is in progress
    When a transaction status event is received but the database is unavailable
    Then Write a message to an error log

