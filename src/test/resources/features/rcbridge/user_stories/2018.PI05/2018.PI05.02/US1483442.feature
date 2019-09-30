# Last updated on 
@CMD
@US1483442
@2018.PI05
@2018.PI05.02
@releasePast
@iterationPast
Feature: US1483442 - Implement product rate condition changes to contract config service.

  @TC674585
  @Manual
  @Functional
  @CMD
  Scenario: TC674585 - [RL0]
    Given a contract includes product group rate conditions
    When the contract product group rate details have been captured
    Then the product group rate conditions are captured

