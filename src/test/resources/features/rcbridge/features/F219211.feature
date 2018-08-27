# Last updated on 
@F219211
Feature: F219211 - Distributed transaction mechanism (Part 4)

  @US1203199
  Scenario: US1203199::0 - Detect transaction timeouts
    Given A transaction that is written to the transaction log is open for longer than the configured timeout
    And The transaction is approved by the approval-coordinator
    Then The transaction is closed with an error result.
    And The error result is written to the transaction-status database.

  @US1203199
  Scenario: US1203199::1 - Detect transaction timeouts
    Given A transaction that is written to the precommit topic is open for longer than the configured timeout
    And The transaction is not approved by the approval-coordinator
    Then The transaction is aborted with an error result.
    And The error result is written to the transaction-status database.

  @US1203508
  Scenario: US1203508::0 - Transaction scoped key-value store (Resource Store)
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    When This resource store library is included in the microservice
    Then ResourceStore implementation is auto-wired via Spring-Boot auto-configuration

  @US1203508
  Scenario: US1203508::1 - Transaction scoped key-value store (Resource Store)
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    When A resource is added to the business event
    Then The resources is stored in the "kv" location

  @US1203508
  Scenario: US1203508::2 - Transaction scoped key-value store (Resource Store)
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    When A resource is removed from the business event
    Then The resources is deleted from the "kv" location

  @US1203508
  Scenario: US1203508::3 - Transaction scoped key-value store (Resource Store)
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    And A business event contains a resource that is offloaded to the "kv" location
    When The business event resource is accessed via it's ResourceContext
    Then The resources is loaded from the "kv" location

  @US1203508
  Scenario: US1203508::4 - Transaction scoped key-value store (Resource Store)
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    And A business event contains a resource that is offloaded to the "kv" location
    When The business event resource is accessed via it's ResourceContext
    And The business event resource is updated via it's ResourceContext
    Then The resources is stored in the "kv" location

  @US1210707
  Scenario: US1210707 - Resource Store Cleanup Service
    Given A transaction has been initiated
    And A resource was stored in the kv-store during the transaction
    When The transaction ends (transaction status event with status "ENDED" is received)
    Then All resources related to that transaction are deleted

