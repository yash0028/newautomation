# Last updated on 
@US1987903
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationFuture
Feature: US1987903 - Loading: Submit for loading

  @TC938302
  @Manual
  @Functional
  Scenario: TC938302 - [RL0]
    Given a rate escalator exists
    When the "Submit Fee Schedules on the MSPS site" task is completed for region as West
    Then a task "Loading: Submit for loading" is assigned to the contractor or process initiator
    And the form "Submit for loading - 59" is used on the task.
    And the task has a due date of 30 days prior to the Planned Effective Date
    And upon completion of this task "Loading: Confirm manual loading completed" is created

