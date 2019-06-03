# Last updated on 
@Visio
@US1824428
@releaseUnknown
@iterationUnknown
Feature: US1824428 - User Groups - No claim if only one person - Facility

  @TC835335
  @Manual
  @Functional
  @Visio
  Scenario: TC835335 - [RL0]
    Given as task is assigned to a User Group
    When there is only one person in the User Group
    Then the person does not have to claim the task

