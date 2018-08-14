# Last updated on 
@US1189845
@2018.PI03
Feature: US1189845 - [Continued] Downstream system specific validation handling

  @TC537148
  @Automated
  @Functional
  Scenario: TC537148 - Validate error reported to transaction system for incomplete contract data for NDB
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is incomplete
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the ndb-validator service and an error is reported to the transaction system

  @TC538452
  @Automated
  @Functional
  Scenario: TC538452 - Validate error reported to transaction system for incomplete contract data for NDB
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is invalid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the cosmos-validator service and an error is reported to the transaction system

  @TC538430
  @Automated
  @Functional
  Scenario: TC538430 - Validate business event is approved by COSMOS-Validator Service
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is valid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the cosmos-validator service

  @TC537147
  @Automated
  @Functional
  Scenario: TC537147 - Validate business event is approved by NDB-Validator Service
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is valid for the NDB update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the ndb-validator service

