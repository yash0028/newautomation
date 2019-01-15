# Last updated on 
@US1287619
@MVP
@CMD
@releaseUnknown
@iterationUnknown
Feature: US1287619 - Create CMD Contract Config database (This for PCP) - Pending move to PI05

  @TC616514
  @Manual
  @Functional
  Scenario: TC616514 - [RL1]
    # Scenario 2 (PCP reassignment Type 2 3 failures)
    Given A termination request contains the PCP reassignment data
    And the transaction response message contains
      | INVALID ADDR SEQ FOR REASSIGNED PROV                          |
      | IPA NUMBER NOT VALID FOR THE REASSIGNED PROVIDER              |
      | PCP REASSIGNMENT MPIN IS REQUIRED WHEN PCP CONTRACT IS TERMED |
      | REASSIGNED MPIN NOT VALID t                                   |
    When the termination request response is recorded in the transaction database as a Category 2 or 3 failure
    Then the transaction does not remain in the PCP reassign Category 1 transaction queue

