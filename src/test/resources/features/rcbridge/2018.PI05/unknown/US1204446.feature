# Last updated on 
@US1204446
@2018.PI05
@MVP
@Priority_2
@Amrutha
@Parity
@F205016
@releaseFuture
@iterationUnknown
Feature: US1204446 - Editing the Physician Payload logic for Reassign fields

  @TC564515
  @Automated
  @Functional
  @US1204446
  @2018.PI05
  Scenario: TC564515 - [RL0]
    Given A roster event transaction is received
    And The roster contains a termination request
    And At least one provider is a PCP
    And At least one product is a gatekeeper product
    When the reassignment data is available in the database
    Then The data is included in the payload

  @TC564516
  @Automated
  @Functional
  @US1204446
  @2018.PI05
  Scenario: TC564516 - [RL1]
    Given A roster event transaction is received
    And The roster contains a termination request
    And At least one provider is a PCP
    And At least one product is a gatekeeper product
    When the reassignment data is not available in the database
    Then The payload fails validation
    And the transaction is tagged as category 1 failure for resolution

