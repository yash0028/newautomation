# Last updated on 
@Arvind
@US1987903
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationFuture
Feature: US1987903 - Loading: Submit for loading - Escalator

  @TC938302
  @Manual
  @Functional
  @Arvind
  Scenario: TC938302 - [RL0]
    Given a rate escalator exists
    When the "Submit Fee Schedules on the MSPS site" task is completed for region as West
    Then a task "Loading: Submit for loading" is assigned to the contractor or process initiator
    And the form "Submit for loading - 59" is used on the task.
    And the task has a due date of 30 calendar days prior to the Planned Effective Date
    And upon completion of this task "Loading: Confirm manual loading completed" is created

  @TC987537
  @Manual
  @Functional
  @Arvind
  Scenario: TC987537 - [RL2]
    Given a rate escalator exists
    When the "Loading: Submit for loading" task is completed for region as both West and Not West
    Then a task "Loading: Confirm manual loading completed" is assigned to the contractor or process initiator
    And the form "Loading: Confirm manual loading completed" is used on the task.
    And the task has a due date of 30 calendar days prior to the Effective Date
    And upon completion of this task rate escalator process the timeliness task is created (placeholder task for now - next sprint has the timeliness task US1469837)

