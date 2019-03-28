# Last updated on 
@Visio
@US1656594
@2019.PI07
@releaseFuture
@iterationUnknown
Feature: US1656594 - User Groups - No claim if only one person

  @TC759647
  @Manual
  @Functional
  @Visio
  Scenario: TC759647 - [RL0]
    Given as task is assigned to a User Group
    When there is only one person in the User Group
    Then the person does not have to claim the task

