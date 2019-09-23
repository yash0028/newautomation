# Last updated on 
@Suman
@US1824414
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationFuture
Feature: US1824414 - User Groups - No claim if only one person - Rate Escalator

  @TC835327
  @Manual
  @Functional
  @Suman
  Scenario: TC835327 - [RL0]
    Given a rate escalator process exists
    When there is one person in the User Group for West region
    Then the person does not have to claim "Submit Fee Schedules on the MSPS site" task
    And the task is automatically assigned to the person

