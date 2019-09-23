# Last updated on 
@Adele_R
@Non_MVP
@US1956577
@releaseUnknown
@iterationUnknown
Feature: US1956577 - MNSPS Fee Schedule withdrawal - Physician

  @TC949605
  @Manual
  @Functional
  @Adele_R
  @Non_MVP
  Scenario: TC949605 - [RL0]
    Given a MNSPS approval request exists
    When the initial task is completed
    Then an Optional "Withdraw MNSPS Approval Request" task is created
    And the task is assigned to the initiator

  @TC949607
  @Manual
  @Functional
  @Adele_R
  @Non_MVP
  Scenario: TC949607 - [RL1]
    Given a MNSPS approval request exists
    When requestor completes the "Withdraws MNSPS Approval Request"
    Then all open tasks are closed

