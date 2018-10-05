# Last updated on 
@US1362216
@2018.PI04
@2018.PI04.03
@CMD2
@#MVP
@10/1_Physician
@Priority_2
@CMD
@F232004
Feature: US1362216 - Processing when provider record does not slot

  @TC598291
  @Manual
  @Functional
  @US1362216
  @2018.PI04
  @2018.PI04.03
  Scenario: TC598291 - [RL0]
    Given all process rules have been processed
    When the outcome result did not successfully slot to a process rule record on the table
    Then a Contract Master or fee schedule is not selected
    And the transaction status for the provider record product group (transaction) is ended
    And the transaction result changed to Success
    And a transaction message generated of 'Provider Record did not meet qualification for Loading'
    And the transaction record details including table, table record, and warning message generated are made available should users need to review

  @TC598292
  @Manual
  @Functional
  @US1362216
  @2018.PI04
  @2018.PI04.03
  Scenario: TC598292 - [RL1]
    Given a user access the CMD dashboard
    When the user accesses the completed button from the dashboard
    And the transaction contains a message / condition 'Provider Record did not meet qualifications for Loading"
    Then the user can see the transaction result and transaction message

