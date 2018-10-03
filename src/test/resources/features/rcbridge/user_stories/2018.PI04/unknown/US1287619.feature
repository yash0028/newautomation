# Last updated on 
@US1287619
@2018.PI04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F219005
Feature: US1287619 - Create CMD Contract Config database

  @TC565218
  @Automated
  @Functional
  @US1287619
  @2018.PI04
  Scenario: TC565218 - [RL0]
    # Scenario 1 (PCP reassignment information is needed)
    Given A roster event transaction is received
    And The roster contains a termination request
    And At least one provider is a PCP
    And At least one product is a gatekeeper product
    When the provider does not have reassignment MPIN, IPA, address sequence number
    Then The following data is available in the table for use in the transaction
      | Contract ID |
      | Transaction ID |
      | Product Group |
      | Termination TIN |
      | Termination MPIN |
      | Termination Date/timestamp |
      | Reassign TIN |
      | Reassign MPIN |
      | Reassign IPA |
      | Reassign Address Seq |

  @TC565219
  @Automated
  @Functional
  @US1287619
  @2018.PI04
  Scenario: TC565219 - [RL1]
    # Scenario 2 (PCP reassignment Type 2 3 failures)
    Given A termination request contains the PCP reassignment data
    And the transaction response message contains
      | INVALID ADDR SEQ FOR REASSIGNED PROV |
      | IPA NUMBER NOT VALID FOR THE REASSIGNED PROVIDER |
      | PCP REASSIGNMENT MPIN IS REQUIRED When PCP CONTRACT IS TERMED |
      | REASSIGNED MPIN NOT VALID t |
    When the termination request response is recorded in the transaction database as a Category 2 or 3 failure
    Then the transaction does not remain in the PCP reassign Category 1 transaction queue

