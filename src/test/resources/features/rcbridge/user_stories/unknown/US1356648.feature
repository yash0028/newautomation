# Last updated on 
@CMD
@US1356648
@releaseUnknown
@iterationUnknown
Feature: US1356648 - New UCM - [ProductGroup] Rate condition category

  @TC958735
  @Manual
  @Functional
  @CMD
  Scenario: TC958735 - [RL0]
    Given a contract exists and is valid
    When the contract terms include a rate differential
    Then a rate condition category is required

  @TC958753
  @Manual
  @Functional
  @CMD
  Scenario: TC958753 - [RL1]
    Given a contract exists and is valid
    When the contract terms DO NOT include a rate differential
    Then a rate condition category is not required

  @TC958771
  @Manual
  @Functional
  @CMD
  Scenario: TC958771 - [RL2]
    Given a contract includes a rate differential
    When the UCM has been created
    Then the rate condition category value is made available in the UCM

  @TC958784
  @Manual
  @Functional
  @CMD
  Scenario: TC958784 - [RL3]
    Given a contract does not include a rate differential
    When the UCM has been created
    Then the rate condition category value is not available in the UCM

  @TC958796
  @Manual
  @Functional
  @CMD
  Scenario: TC958796 - [RL4]
    Given a contract will include a rate differential
    When the user needs to specify the category used for the differential
    Then a list of permissible values is made available for the user to select from

  @TC958806
  @Manual
  @Functional
  @CMD
  Scenario: TC958806 - [RL5]
    Given a list of permissible category values exists
    When a user needs to select one or more values from the list
    Then the list of permissible values is made available from within the interview template to select from

  @TC958813
  @Manual
  @Functional
  @CMD
  Scenario: TC958813 - [RL6]
    Given contract will NOT include a rate differential
    When the user needs to specify the contract will not include a rate differential
    Then a list of permissible values is NOT made available for the user to select from within the interview template

