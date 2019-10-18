# Last updated on 
@Sheham
@US2125526
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US2125526 - Move retro to test environment

  @TC1022062
  @Manual
  @Functional
  @Sheham
  Scenario: TC1022062 - [RL0]
    Given the retro process revamp is completed
    When the process is downloaded from dev and uploaded into stage
    Then the retro process is in test

