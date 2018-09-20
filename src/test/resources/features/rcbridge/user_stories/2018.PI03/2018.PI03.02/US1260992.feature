# Last updated on 
@US1260992
@2018.PI03
@2018.PI03.02
Feature: US1260992 - [Unfinished] Downstream system specific validation handling

  @TC564466
  @Automated
  @Functional
  Scenario: TC564466 - [RL2]
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is valid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the cosmos-validator service

  @TC564464
  @Automated
  @Functional
  Scenario: TC564464 - [RL0]
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is valid for the NDB update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the ndb-validator service

  @TC564465
  @Automated
  @Functional
  Scenario: TC564465 - [RL1]
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is incomplete
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the ndb-validator service and an error is reported to the transaction system

  @TC564467
  @Automated
  @Functional
  Scenario: TC564467 - [RL3]
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is invalid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the cosmos-validator service and an error is reported to the transaction system

