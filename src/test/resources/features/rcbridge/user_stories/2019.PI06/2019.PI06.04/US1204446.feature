# Last updated on 
@US1204446
@2019.PI06
@2019.PI06.04
@releaseFuture
@iterationFuture
Feature: US1204446 - Editing the Physician Payload logic for Reassign fields

  @TC701662
  @Manual
  @Functional
  Scenario: TC701662 - [RL0]
    Given A roster event transaction is received
    And The roster contains a termination request
    And At least one provider is a PCP
    And At least one product is a gatekeeper product
    When the reassignment data is available in the database
    Then The data is included in the payload

  @TC701705
  @Manual
  @Functional
  Scenario: TC701705 - [RL1]
    Given A roster event transaction is received
    And The roster contains a termination request
    And At least one provider is a PCP
    And At least one product is a gatekeeper product
    When the reassignment data is not available in the database
    Then The payload fails validation
    And the transaction is tagged as category 1 failure for resolution

