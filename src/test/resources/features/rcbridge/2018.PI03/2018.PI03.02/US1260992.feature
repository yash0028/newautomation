# Last updated on 
@US1260992
@2018.PI03
@2018.PI03.02
@MVP
@10/1_Physician
@Priority_1
@Transaction
@Parity
@releasePast
@iterationPast
Feature: US1260992 - [Unfinished] Downstream system specific validation handling

  @TC605355
  @Manual
  @Functional
  Scenario: TC605355 - [RL3]
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is invalid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the cosmos-validator service and an error is reported to the transaction system

  @TC605354
  @Manual
  @Functional
  Scenario: TC605354 - [RL2]
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is valid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the cosmos-validator service

  @TC605353
  @Manual
  @Functional
  Scenario: TC605353 - [RL1]
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is incomplete
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the ndb-validator service and an error is reported to the transaction system

  @TC605352
  @Manual
  @Functional
  Scenario: TC605352 - [RL0]
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is valid for the NDB update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the ndb-validator service

