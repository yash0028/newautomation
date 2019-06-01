# Last updated on 
@US1362216
@2019.PI07
@2019.PI07.04
@releasePresent
@iterationPresent
Feature: US1362216 - Processing when provider record does not slot(E2E?)

  @TC598291
  @Manual
  @Functional
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
  Scenario: TC598292 - [RL1]
    Given a user access the CMD dashboard
    When the user accesses the completed button from the dashboard
    And the transaction contains a message / condition 'Provider Record did not meet qualifications for Loading"
    Then the user can see the transaction result and transaction message

