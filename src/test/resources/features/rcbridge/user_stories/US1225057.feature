# Last updated on 
@US1225057
Feature: US1225057 - Create MPIN Termination Workflow

  @TC564621
  @Automated
  @Functional
  Scenario: TC564621 - [RL0]
    Given I am the Entity Management Solution
    When an MPIN is terminated
    And there are active contracts associated to the MPIN
    Then a workflow item is created
    And the owner of the contract is notified to investigate and update the contract if necessary

