# Last updated on 
@US1826768
@2019.PI07
@2019.PI07.05
@releasePast
@iterationPast
Feature: US1826768 - Contracts Domain message handling

  @TC843990
  @Manual
  @Functional
  Scenario: TC843990 - [RL0]
    Given the exari application is available
    And the message catalog changes are implemented in contracts-domain
    When the contract is installed and amended
    Then the messages from message catalog generated in CMD ui

