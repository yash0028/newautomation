# Last updated on 
@Visio
@US1824505
@releaseUnknown
@iterationUnknown
Feature: US1824505 - User Groups - No claim if only one person - Physician

  @TC835332
  @Manual
  @Functional
  @Visio
  Scenario: TC835332 - [RL0]
    Given as task is assigned to a User Group
    When there is only one person in the User Group
    Then the person does not have to claim the task

