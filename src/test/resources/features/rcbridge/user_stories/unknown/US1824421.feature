# Last updated on 
@Visio
@US1824421
@releaseUnknown
@iterationUnknown
Feature: US1824421 - User Groups - No claim if only one person - Chargemaster

  @TC835329
  @Manual
  @Functional
  @Visio
  Scenario: TC835329 - [RL0]
    Given as task is assigned to a User Group
    When there is only one person in the User Group
    Then the person does not have to claim the task

