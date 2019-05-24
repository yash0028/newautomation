# Last updated on 
@US1797284
@releaseUnknown
@iterationUnknown
Feature: US1797284 - CMD UI - Transaction identifier MassProject vs Not

  @TC828081
  @Manual
  @Functional
  Scenario: TC828081 - [RL1]
    Given a CMD user accesses the CMD
    When viewing the "mass actions" tab
    Then only transaction associated with Mass Actions projects will be displayed
    And the 4-blocker volumes only represent mass actions transactions

