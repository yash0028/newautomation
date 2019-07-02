# Last updated on 
@CMD_UI
@US1797284
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationFuture
Feature: US1797284 - CMD UI - Transaction identifier MassProject vs Not

  @TC828081
  @Manual
  @Functional
  @CMD_UI
  Scenario: TC828081 - [RL1]
    Given a CMD user accesses the CMD
    When viewing the "mass actions" tab
    Then only transaction associated with Mass Actions projects will be displayed
    And the 4-blocker volumes only represent mass actions transactions
    ###

