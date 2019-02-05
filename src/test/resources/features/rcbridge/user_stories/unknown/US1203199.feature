# Last updated on 
@US1203199
@releaseUnknown
@iterationUnknown
Feature: US1203199 - Detect transaction timeouts

  @TC701681
  @Manual
  @Functional
  Scenario: TC701681 - [RL0]
    Given A transaction that is written to the transaction log is open for longer than the configured timeout
    And The transaction is approved by the approval-coordinator
    Then The transaction is closed with an error result.
    And The error result is written to the transaction-status database.

  @TC701706
  @Manual
  @Functional
  Scenario: TC701706 - [RL1]
    Given A transaction that is written to the precommit topic is open for longer than the configured timeout
    And The transaction is not approved by the approval-coordinator
    Then The transaction is aborted with an error result.
    And The error result is written to the transaction-status database.

