# Last updated on 
@US1401419
@2019.PI06
@CMD
@releaseFuture
@iterationUnknown
Feature: US1401419 - CMD PCP Reassign API- pull PCP reassign type 1 error from db to the CMD PCP Reassign UI

  @TC697433
  @Manual
  @Functional
  Scenario: TC697433 - [RL0]
    Given a cancel transaction results in a Type 1 error due to PCP reassignment
    When reassignment information is needed
    Then an API should move information from the fallout database to the reassignment UI, including transaction ID, contract name, state(s) Market #s, MPIN, TIN, Provider name, Primary Specialty, Cancel Code, Cancel Reason and Cancel Date
    ###

