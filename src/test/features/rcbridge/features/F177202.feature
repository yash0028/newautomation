# Last updated on 2018-07-09T12:52:56.512Z
@MVP
@Priority_1
@Parity
Feature: F177202 - Distributed transaction mechanism (Part 3)

  @CLM_UAT
  @2018.PI03
  @2018.PI03.01
  Scenario: US1128296::0
    Given the transaction state micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @2018.PI03
  @2018.PI03.01
  Scenario: US1128296::1
    Given the transaction coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @2018.PI03
  @2018.PI03.01
  Scenario: US1128296::2
    Given the approval coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  Scenario: US1189840::0
    Given The transaction system accepts new transactions
    When A new transaction is initialized
    And Writing the initial transaction status to the database was successful
    Then The initial transaction status can queried via the transaction-status service by the time the transaction id is returned to the caller

  Scenario: US1189840::1
    Given The transaction system accepts new transactions
    When A new transaction is initialized
    And Writing the initial transaction status to the database fails
    Then The error is logged and the transaction status can queried via the transaction-status service once the transaction system has processed the transaction

  Scenario: US1189840::2
    Given The transaction system accepts new transactions
    When A new transaction is initialized
    And Publishing the initial transaction state to Kafka fails
    And Writing the initial transaction status to the database was successful
    Then The initial transaction status is deleted from the database

  Scenario: US1189840::3
    Given The transaction system accepts new transactions
    When A new transaction is initialized
    And Publishing the initial transaction state to Kafka fails
    And Writing the initial transaction status to the database failed
    Then Deleting the initial transaction status from the database is skipped

  Scenario: US1203199::0
    Given A transaction that is written to the transaction log is open for longer than the configured timeout
    And The transaction is approved by the approval-coordinator
    Then The transaction is closed with an error result.
    And The error result is written to the transaction-status database.

  Scenario: US1203199::1
    Given A transaction that is written to the precommit topic is open for longer than the configured timeout
    And The transaction is not approved by the approval-coordinator
    Then The transaction is aborted with an error result.
    And The error result is written to the transaction-status database.

