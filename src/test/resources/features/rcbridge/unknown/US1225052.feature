# Last updated on 
@US1225052
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1225052 - Create TIN Termination Workflow

  @TC565097
  @Automated
  @Functional
  Scenario: TC565097 - [RL0]
    Given I am the Entity Management Solution
    When a TIN is terminated
    And there are active contracts associated to the TIN
    Then a workflow item is created
    And the owner of the contract is notified to investigate and update the contract if necessary

