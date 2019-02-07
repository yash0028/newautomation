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
    When the task is completed
    Then each person in the NPPP user group is an 'involved user"

