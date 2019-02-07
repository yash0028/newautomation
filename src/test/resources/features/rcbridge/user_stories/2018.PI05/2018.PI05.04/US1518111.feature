# Last updated on 
@CMD
@US1518111
@2018.PI05
@2018.PI05.04
@releasePast
@iterationPast
Feature: US1518111 - Identify manually entered contract masters

  @TC693614
  @Manual
  @Functional
  @CMD
  Scenario: TC693614 - [RL0]
    Given a contract master is manually entered within the UI
    Then the contract master record will be stored within the OCM database with a "user-defined" designation
    And the contract master will be displayed within the UI with a "user-defined" designation

