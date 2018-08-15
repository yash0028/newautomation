# Last updated on 
@MVP
@10/1_Physician
@Priority_1
@Parity
@F177202
Feature: F177202 - Distributed transaction mechanism (Part 3)

  @US1260992
  @2018.PI03
  Scenario: US1260992::0 - [Unfinished] Downstream system specific validation handling
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is valid for the NDB update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the ndb-validator service

  @US1260992
  @2018.PI03
  Scenario: US1260992::1 - [Unfinished] Downstream system specific validation handling
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is incomplete
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the ndb-validator service and an error is reported to the transaction system

  @US1260992
  @2018.PI03
  Scenario: US1260992::2 - [Unfinished] Downstream system specific validation handling
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is valid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the cosmos-validator service

  @US1260992
  @2018.PI03
  Scenario: US1260992::3 - [Unfinished] Downstream system specific validation handling
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is invalid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the cosmos-validator service and an error is reported to the transaction system

  @US1189845
  @2018.PI03
  Scenario: US1189845::0 - [Continued] Downstream system specific validation handling
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is valid for the NDB update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the ndb-validator service

  @US1189845
  @2018.PI03
  Scenario: US1189845::1 - [Continued] Downstream system specific validation handling
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is incomplete
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the ndb-validator service and an error is reported to the transaction system

  @US1189845
  @2018.PI03
  Scenario: US1189845::2 - [Continued] Downstream system specific validation handling
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is valid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the cosmos-validator service

  @US1189845
  @2018.PI03
  Scenario: US1189845::3 - [Continued] Downstream system specific validation handling
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is invalid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the cosmos-validator service and an error is reported to the transaction system

  @US1236601
  @2018.PI03
  Scenario: US1236601::0 - Code Coverage Test Cases
    When The units are run and the code coverage is recorded for the contract-query-api service
    Then The overall test code coverage is above 70%

  @US1236601
  @2018.PI03
  Scenario: US1236601::1 - Code Coverage Test Cases
    When The units are run and the code coverage is recorded for the ndb-updater-service service
    Then The overall test code coverage is above 70%

  @US1236601
  @2018.PI03
  Scenario: US1236601::2 - Code Coverage Test Cases
    When The units are run and the code coverage is recorded for the cosmos-updater-service service
    Then The overall test code coverage is above 70%

  @US1236601
  @2018.PI03
  Scenario: US1236601::3 - Code Coverage Test Cases
    When The units are run and the code coverage is recorded for the contracts-domain service
    Then The overall test code coverage is above 70%

  @US1236601
  @2018.PI03
  Scenario: US1236601::4 - Code Coverage Test Cases
    When The units are run and the code coverage is recorded for the product-crosswalk service
    Then The overall test code coverage is above 70%

  @CLM_UAT
  @US1128296
  @2018.PI03
  Scenario: US1128296::0 - [Continued] [Continued] Benchmarking & Acceptance Testing
    Given the transaction state micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @US1128296
  @2018.PI03
  Scenario: US1128296::1 - [Continued] [Continued] Benchmarking & Acceptance Testing
    Given the transaction coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @US1128296
  @2018.PI03
  Scenario: US1128296::2 - [Continued] [Continued] Benchmarking & Acceptance Testing
    Given the approval coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

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

  @US1199538
  @2018.PI03
  Scenario: US1199538 - Event Gateway API Spike
    Given the Event Gateway API is needed
    Then the developer will research further functionality of the API.

  @US1210707
  Scenario: US1210707 - Resource Store Cleanup Service
    Given A transaction has been initiated
    And A resource was stored in the kv-store during the transaction
    When The transaction ends (transaction status event with status "ENDED" is received)
    Then All resources related to that transaction are deleted

