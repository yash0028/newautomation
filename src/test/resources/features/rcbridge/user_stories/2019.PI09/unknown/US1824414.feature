# Last updated on 
@Visio
@US1824414
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1824414 - User Groups - No claim if only one person - Rate Escalator

  @TC835327
  @Manual
  @Functional
  @Visio
  Scenario: TC835327 - [RL0]
    Given as task is assigned to a User Group
    When there is only one person in the User Group
    Then the person does not have to claim the task

