# Last updated on 
@MVP
@CLM_UAT
@US1107637
Feature: US1107637 - Remove Contract ID from Provider upon Contract Termination

  @TC564537
  @Automated
  @Functional
  Scenario: TC564537 - [RL0]
    Given I am the Entity Management Solution
    When the Contracting process is cancelled with a Provider
    Then I need the Contract ID status to change to an "Inactive" status
    And the Contract ID has an inactivation date

