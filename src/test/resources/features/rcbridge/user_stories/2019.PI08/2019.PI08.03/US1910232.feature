# Last updated on 
@US1910232
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationPresent
Feature: US1910232 - Abort transaction that result in Type 1 errors

  @TC884053
  @Manual
  @Functional
  Scenario: TC884053 - [RL0]
    Given a contract event results in a Type 1 Contract Master error
    When the user determines the need to abort the work object transaction(s)
    Then the user can select/designate "cancel Product install" from within the UI
    And the "cancel install" is stored in the audit database
    And the work object transaction ends

  @TC909547
  @Manual
  @Functional
  Scenario: TC909547 - [RL1]
    Given a contract event results in a Type 1 PCP reassignment error
    When the user determines the need to abort the work object transaction(s)
    Then the user can not select/designate "cancel" from within the UI
    And the work object transaction does not end

