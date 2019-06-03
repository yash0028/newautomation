# Last updated on 
@Visio
@US1824403
@releaseUnknown
@iterationUnknown
Feature: US1824403 - User Groups - No claim if only one person - Rate Update

  @TC835331
  @Manual
  @Functional
  @Visio
  Scenario: TC835331 - [RL0]
    Given as task is assigned to a User Group
    When there is only one person in the User Group
    Then the person does not have to claim the task

