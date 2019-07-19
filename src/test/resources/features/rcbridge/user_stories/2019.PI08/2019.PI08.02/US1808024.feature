# Last updated on 
@CMD_UI
@US1808024
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1808024 - Add USERID to CMD Reference Data web UI

  @TC828085
  @Manual
  @Functional
  @CMD_UI
  Scenario: TC828085 - [RL0]
    Given a user accesses the Reference Data tab in the CMD UI
    When the user has selected a Reference Data Table
    And selected 'Show Table'
    Then UserID is displayed for each record in the Hisotry Log
    ###

