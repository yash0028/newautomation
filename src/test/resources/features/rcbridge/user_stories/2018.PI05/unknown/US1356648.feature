# Last updated on 
@CMD
@US1356648
@2018.PI05
@CMD
@Priority_2
@UCM
@F231564
Feature: US1356648 - New UCM - [ProductGroup] Rate condition category

  @TC611979
  @Manual
  @Functional
  @CMD
  @US1356648
  @2018.PI05
  Scenario: TC611979 - [RL1]
    Given a contract exists and is valid
    When the contract terms DO NOT include a rate differential
    Then a rate condition category is not required

  @TC611984
  @Manual
  @Functional
  @CMD
  @US1356648
  @2018.PI05
  Scenario: TC611984 - [RL6]
    Given contract will NOT include a rate differential
    When the user needs to specify the contract will not include a rate differential
    Then a list of permissible values is NOT made available for the user to select from within the interview template

  @TC596323
  @Manual
  @Functional
  @CMD
  @US1356648
  @2018.PI05
  Scenario: TC596323 - [RL0]
    Given a contract exists and is valid
    When the contract terms include a rate differential
    Then a rate condition category is required

  @TC611981
  @Manual
  @Functional
  @CMD
  @US1356648
  @2018.PI05
  Scenario: TC611981 - [RL3]
    Given a contract does not include a rate differential
    When the UCM has been created
    Then the rate condition category value is not available in the UCM

  @TC611983
  @Manual
  @Functional
  @CMD
  @US1356648
  @2018.PI05
  Scenario: TC611983 - [RL5]
    Given a list of permissible category values exists
    When a user needs to select one or more values from the list
    Then the list of permissible values is made available from within the interview template to select from

  @TC611982
  @Manual
  @Functional
  @CMD
  @US1356648
  @2018.PI05
  Scenario: TC611982 - [RL4]
    Given a contract will include a rate differential
    When the user needs to specify the category used for the differential
    Then a list of permissible values is made available for the user to select from

  @TC611980
  @Manual
  @Functional
  @CMD
  @US1356648
  @2018.PI05
  Scenario: TC611980 - [RL2]
    Given a contract includes a rate differential
    When the UCM has been created
    Then the rate condition category value is made available in the UCM

