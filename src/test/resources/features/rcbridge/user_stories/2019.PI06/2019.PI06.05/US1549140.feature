# Last updated on 
@Sheham
@US1549140
@2019.PI06
@2019.PI06.05
@releasePresent
@iterationPresent
Feature: US1549140 - Add NPPP users as involved in all retro approval requests

  @TC717639
  @Manual
  @Functional
  @Sheham
  Scenario: TC717639 - [RL0]
    Given a retro approval request is initiated
    When the initiator completes their task
    Then the NPPP users are automatically added as "Involved Users" for the Market Lead tasks

  @TC738682
  @Manual
  @Functional
  @Sheham
  Scenario: TC738682 - [RL1]
    Given a task needs to be created for an impacted LOB COO in the retro process
    When the task is created
    Then the NPPP users are automatically added as "Involved Users" for the impacted LOB COO tasks

  @TC784565
  @Manual
  @Functional
  @Sheham
  Scenario: TC784565 - [RL2]
    Given a task needs to be created for a Network COO in the retro process
    When the task is created
    Then the NPPP users are automatically added as "Involved Users" for the Network COO tasks

  @TC784567
  @Manual
  @Functional
  @Sheham
  Scenario: TC784567 - [RL3]
    Given a task needs to be created for the retro request initiator in the retro process (All tasks - Denial, Request for Info, Expiration)
    When the task is created
    Then the NPPP users are automatically added as "Involved Users" for the retro request initiator tasks

