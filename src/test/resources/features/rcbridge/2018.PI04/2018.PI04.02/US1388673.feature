# Last updated on
@US1388673
@2018.PI04
@2018.PI04.02
@MVP
@Priority_1
@10/1_Physician
@F219211
@releasePresent
@iterationPast
Feature: US1388673 - [Unfinished] [Continued][Continued] Downstream system specific validation handling

  @TC615266
  @Manual
  @Functional
  @US1388673
  @2018.PI04
  @2018.PI04.02
  Scenario: TC615266 - [RL2]
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is valid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the cosmos-validator service

  @TC615265
  @Manual
  @Functional
  @US1388673
  @2018.PI04
  @2018.PI04.02
  Scenario: TC615265 - [RL1]
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is incomplete
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the ndb-validator service and an error is reported to the transaction system

  @TC615264
  @Manual
  @Functional
  @US1388673
  @2018.PI04
  @2018.PI04.02
  Scenario: TC615264 - [RL0]
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is valid for the NDB update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the ndb-validator service

  @TC615267
  @Manual
  @Functional
  @US1388673
  @2018.PI04
  @2018.PI04.02
  Scenario: TC615267 - [RL3]
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is invalid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the cosmos-validator service and an error is reported to the transaction system

