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
    Then the NPPP users are automatically added as "Involved Users" for the Market Lead tasks

  @TC738682
  @Manual
  @Functional
  Scenario: TC738682 - [RL1]
    Given a task exists for a LOB COO retro approval request exists for a LOB COO
    When the task
    Then the NPPP users are automatically added as "Involved Users" for the LOB COO tasks

