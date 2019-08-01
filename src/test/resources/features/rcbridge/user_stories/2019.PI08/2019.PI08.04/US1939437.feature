# Last updated on 
@Arvind
@US1939437
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationFuture
Feature: US1939437 - Apply retro to fee schedule hoppers

  @TC911639
  @Manual
  @Functional
  @Arvind
  Scenario: TC911639 - [RL0]
    Given the Hopper: Submit for loading task exists
    When the effective date of the hopper is 15 days or less than the current day
    Then the task can't be completed without an approved retro in the monitoring phase

