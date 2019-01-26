# Last updated on 
@US1401428
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1401428 - UI/UX - Allow CMD user to make PCP Reassignment selection

  @TC697434
  @Manual
  @Functional
  Scenario: TC697434 - [RL0]
    Given a cancel transaction has been received
    When the transaction includes a PCP requiring reassignment
    Then the canceling provider information should be displayed, including transaction ID, contract name, state(s), market #(s), MPIN, TIN, Provider name, Primary Specialty, Cancel Code, Cancel Reason, Cancel Date
    And data capture fields should be present, including MPIN, address sequence ID
    And all data capture fields are required
    And a user can enter reassignment info for the/a cancelling provider

  @TC697439
  @Manual
  @Functional
  Scenario: TC697439 - [RL1]
    Given a cancel transaction has been received
    And PCP reassignment is required
    When any one of the data capture fields is not populated on a reassignment record
    Then an onscreen error should display stating, "Please supply required information"
    And the reassignment record cannot be completed

