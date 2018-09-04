# Last updated on 
@MVP
@Priority_1
@Parity
@F205016
Feature: F205016 - Downstream MS - NDB Physician payload update PCP Reassign MPIN/IPA info

  @US1304047
  @2018.PI04
  Scenario: US1304047::0 - Identify Gatekeeper Products
    Given a roster termination event is received
    And the request includes one of the following Product Codes: S0, S1, S2, SG, SH, SI, SX, SY, SZ, S7, S8, S9, S3, S4, SA, SB, SC, SD, SE, ED, EE, EF, EA, EB, EC, EG, EH, EI, G0
    When the termination request includes a PCP
    Then PCP reassignment information is required from the database

  @US1304047
  @2018.PI04
  Scenario: US1304047::1 - Identify Gatekeeper Products
    Given a roster termination event is received
    And the request does not includes one of the following Product Codes: S0, S1, S2, SG, SH, SI, SX, SY, SZ, S7, S8, S9, S3, S4, SA, SB, SC, SD, SE, ED, EE, EF, EA, EB, EC, EG, EH, EI, G0
    When the termination request includes a PCP
    Then PCP reassignment information is NOT required from the database

  @US1204446
  @2018.PI04
  Scenario: US1204446::0 - Editing the Physician Payload logic for Reassign fields
    Given: A roster event transaction is received
    And: The roster contains a termination request
    And: At least one provider is a PCP
    And: At least one product is a gatekeeper product
    When: the reassignment data is available in the database
    Then: The data is included in the payload

  @US1204446
  @2018.PI04
  Scenario: US1204446::1 - Editing the Physician Payload logic for Reassign fields
    Given: A roster event transaction is received
    And: The roster contains a termination request
    And: At least one provider is a PCP
    And: At least one product is a gatekeeper product
    When: the reassignment data is not available in the database
    Then: The payload fails validation
    And: the transaction is tagged as category 1 failure for resolution

