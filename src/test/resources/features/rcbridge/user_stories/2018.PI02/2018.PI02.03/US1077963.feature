# Last updated on 
@US1077963
@2018.PI02
@2018.PI02.03
@MVP
@PI02_Top3
@Plus
@Parity
@F175417
Feature: US1077963 - Transaction Status Update and Connect Database

  @TC565867
  @Automated
  @Functional
  @US1077963
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565867 - [RL2]
    Given A transaction is in progress
    When a transaction status event is received but the database is unavailable
    Then Write a message to an error log

  @TC565866
  @Automated
  @Functional
  @US1077963
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565866 - [RL1]
    Given A transaction is in progress
    When a transaction status event is received
    And The transaction data is corrupted
    Then Write a message to an error log

  @TC565865
  @Automated
  @Functional
  @US1077963
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565865 - [RL0]
    Given A transaction is in progress
    When a transaction status event is received
    Then Write the updates to the database

