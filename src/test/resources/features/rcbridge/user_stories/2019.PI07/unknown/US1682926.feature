# Last updated on 
@US1682926
@2019.PI07
@releasePresent
@iterationUnknown
Feature: US1682926 - Finalize Process Name and Task Names - last story for retro

  @TC778307
  @Manual
  @Functional
  Scenario: TC778307 - [RL0]
    Given the retro process is built
    When we look at the task names and process names
    Then they match what the end users should see

