# Last updated on 2018-07-24T15:57:33.755Z
@MVP
@10/1_Physician
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

  @CLM_E2E_Release_1
  @Milestone_1
  Scenario: US1189840::0
    Given The transaction system accepts new transactions
    When A new transaction is initialized
    And Writing the initial transaction status to the database was successful
    Then The initial transaction status can queried via the transaction-status service by the time the transaction id is returned to the caller

  @CLM_E2E_Release_1
  @Milestone_1
  Scenario: US1189840::1
    Given The transaction system accepts new transactions
    When A new transaction is initialized
    And Writing the initial transaction status to the database fails
    Then The error is logged and the transaction status can queried via the transaction-status service once the transaction system has processed the transaction

  @CLM_E2E_Release_1
  @Milestone_1
  Scenario: US1189840::2
    Given The transaction system accepts new transactions
    When A new transaction is initialized
    And Publishing the initial transaction state to Kafka fails
    And Writing the initial transaction status to the database was successful
    Then The initial transaction status is deleted from the database

  @CLM_E2E_Release_1
  @Milestone_1
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

  Scenario: US1203508::0
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    When This resource store library is included in the microservice
    Then ResourceStore implementation is auto-wired via Spring-Boot auto-configuration

  Scenario: US1203508::1
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    When A resource is added to the business event
    Then The resources is stored in the "kv" location

  Scenario: US1203508::2
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    When A resource is removed from the business event
    Then The resources is deleted from the "kv" location

  Scenario: US1203508::3
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    And A business event contains a resource that is offloaded to the "kv" location
    When The business event resource is accessed via it's ResourceContext
    Then The resources is loaded from the "kv" location

  Scenario: US1203508::4
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    And A business event contains a resource that is offloaded to the "kv" location
    When The business event resource is accessed via it's ResourceContext
    And The business event resource is updated via it's ResourceContext
    Then The resources is stored in the "kv" location

  @2018.PI03
  @2018.PI03.01
  Scenario: US1199538
    Given the Event Gateway API is needed
    Then the developer will research further functionality of the API.

  Scenario: US1210707
    Given A transaction has been initiated
    And A resource was stored in the kv-store during the transaction
    When The transaction ends (transaction status event with status "ENDED" is received)
    Then All resources related to that transaction are deleted

