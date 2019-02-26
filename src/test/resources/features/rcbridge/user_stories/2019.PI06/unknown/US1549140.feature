# Last updated on 
@US1549140
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1549140 - Add NPPP users as involved in all retro approval requests

  @TC717639
  @Manual
  @Functional
  Scenario: TC717639 - [RL0]
    Given a retro approval request is initiated
    When the initiator completes their task
    Then the initiator can add involved users to the retro

  @TC738682
  @Manual
  @Functional
  Scenario: TC738682 - [RL1]
    Given a retro approval is created
    When involved users are added to a retro
    Then the involved user has a task assigned to them under "involved tasks" to view/monitor the overall progress of the retro
    And though involved user can edit the task, they can't submit/complete the task

