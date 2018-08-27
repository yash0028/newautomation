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

  @US1199538
  @2018.PI03
  Scenario: US1199538 - Event Gateway API Spike
    Given the Event Gateway API is needed
    Then the developer will research further functionality of the API.

