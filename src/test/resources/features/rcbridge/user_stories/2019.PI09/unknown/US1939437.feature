# Last updated on 
@Suman
@US1939437
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US1939437 - Apply retro to fee schedule hoppers

  @TC911639
  @Manual
  @Functional
  @Suman
  Scenario: TC911639 - [RL0]
    Given the "Hopper: Submit for loading" task exists
    When the effective date of the hopper is 15 days or less than the current day
    Then the task can't be completed without an approved retro in the monitoring phase
    And a new task is started, "Hopper: Retro Required"

  @TC925279
  @Manual
  @Functional
  @Suman
  Scenario: TC925279 - [RL1]
    Given the "Hopper: Retro Required" task exists
    When the contractor is viewing the task
    Then they see a message, "Retro Approval is required for this Hopper because it was not submitted for loading within our guidelines."
    And there is a customized outcome button of "Start Retro Process"
    And clicking the "Start Retro Process" starts the retro approval process with the details from the hopper

