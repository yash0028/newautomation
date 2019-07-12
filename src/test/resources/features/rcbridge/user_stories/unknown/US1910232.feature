# Last updated on 
@US1910232
@releaseUnknown
@iterationUnknown
Feature: US1910232 - Abort transaction that result in Type 1 errors

  @TC884053
  @Manual
  @Functional
  Scenario: TC884053 - [RL0]
    Given a contract event results in a Type 1 error
    When the user determines the need to abort the transaction(s)
    Then the user can select/designate "cancel install" from within the UI
    And the "cancel install" is stored in the audit database
    And the transaction ends

