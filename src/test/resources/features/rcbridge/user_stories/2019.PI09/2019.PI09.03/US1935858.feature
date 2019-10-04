# Last updated on 
@Sheham
@Suman
@US1935858
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPresent
Feature: US1935858 - Move retro to test environment

  @TC911635
  @Manual
  @Functional
  @Sheham
  @Suman
  Scenario: TC911635 - [RL0]
    Given the retro process revamp is completed
    When the process is downloaded from dev and uploaded into stage
    Then the retro process is in test

