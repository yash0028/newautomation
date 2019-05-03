# Last updated on 
@US1552975
@2019.PI07
@2019.PI07.01
@releasePresent
@iterationPast
Feature: US1552975 - LOB COO Reminder For No Response

  @TC792583
  @Manual
  @Functional
  Scenario: TC792583 - [RL1]
    Given a LOB COO has an outstanding approval
    And the task is not claimed
    Then all users in the group will receive the reminder email

  @TC792586
  @Manual
  @Functional
  Scenario: TC792586 - [RL2]
    Given a LOB COO has an outstanding approval
    And the task is claimed
    Then only the person who claimed the task will receive the reminder email

