# Last updated on 
@US1910232
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationPresent
Feature: US1910232 - Abort transaction that result in Type 1 errors

  @TC884053
  @Manual
  @Functional
  Scenario: TC884053 - [RL0]
    Given a contract event results in a Type 1 Contract Master error
    When the user determines the need to abort the work object transaction(s)
    Then the user can select/designate "Abort Product install" from within the UI

  @TC909547
  @Manual
  @Functional
  Scenario: TC909547 - [RL1]
    Given a contract event results in a Type 1 Contract Master error
    When the user has selects to abort the install
    Then a popup will be displayed asking the user to confirm their decision to abort the install
    And an information message is displayed above the selection stating, "By confirming your decision to abort this transaction, this record will not be loaded to any downstream system."

  @TC926284
  @Manual
  @Functional
  Scenario: TC926284 - [RL2]
    Given a contract event results in a Type 1 Contract Master error
    When the user has selects to abort the install
    And the user has confirmed their desire to abort the transaction
    Then the outcome result is stored in the audit database
    And the work object is resolved

  @TC926285
  @Manual
  @Functional
  Scenario: TC926285 - [RL3]
    Given a contract event results in a Type 1 Contract Master error
    When the user has selects to abort the install
    And the user does not confirm their desire to abort the transaction
    Then the additional window is closed
    And the user is returned to the Type 1 error listing for that transaction

