# Last updated on 
@US1931828
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationFuture
Feature: US1931828 - Fix place holder task in monitor phase for retro

  @TC913327
  @Manual
  @Functional
  Scenario: TC913327 - [RL0]
    Given the retro process exists
    When a person views the process
    Then there is not a "Placeholder Task"

