# Last updated on 
@US1458096
@2018.PI05
@2018.PI05.01
@releasePresent
@iterationPast
Feature: US1458096 - Clarify COSMOS Contract Master Lookups

  @TC658866
  @Manual
  @Functional
  Scenario: TC658866 - [RL0]
    Given a contract includes a COSMOS product above the line
    When a contract master lookup is performed
    Then the lookup should include DIV, Panel, COSMOS Contract number, and Market Number values

