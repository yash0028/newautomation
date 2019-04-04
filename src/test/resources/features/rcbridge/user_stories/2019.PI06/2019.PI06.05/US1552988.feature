# Last updated on 
@Arvind
@US1552988
@2019.PI06
@2019.PI06.05
@releasePresent
@iterationPresent
Feature: US1552988 - Withdraw Retro Approval Process - Unsuccessful

  @TC743433
  @Manual
  @Functional
  @Arvind
  Scenario: TC743433 - [RL0]
    Given a retro approval request exists
    When the initial task is completed
    Then an Optional "Withdraw Retro Approval Request" task is created
    And the task is assigned to the retro request initiator

  @TC760947
  @Manual
  @Functional
  @Arvind
  Scenario: TC760947 - [RL2]
    Given a retro approval request exists
    When requestor completes the "Withdraws Retro Approval Request"
    Then all open tasks are closed

