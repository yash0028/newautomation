# Last updated on 
@Visio
@Adele_R
@US1824414
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1824414 - User Groups - No claim if only one person - Rate Escalator

  @TC835327
  @Manual
  @Functional
  @Visio
  @Adele_R
  Scenario: TC835327 - [RL0]
    Given a rate escalator process exists
    When there is one person in the User Group for West region
    Then the person does not have to claim "Submit Fee Schedules on the MSPS site" task
    And the task is automatically to the person

