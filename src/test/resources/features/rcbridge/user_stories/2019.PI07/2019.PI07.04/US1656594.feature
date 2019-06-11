# Last updated on 
@Visio
@Sheham
@US1656594
@2019.PI07
@2019.PI07.04
@releasePresent
@iterationPresent
Feature: US1656594 - User Groups - No claim if only one person - retro

  @TC759647
  @Manual
  @Functional
  @Visio
  @Sheham
  Scenario: TC759647 - [RL0]
    Given as task is assigned to a User Group
    When there is only one person in the User Group
    Then the person does not have to claim the task

