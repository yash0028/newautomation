# Last updated on 
@MVP
@CLM_UAT
@US1107634
Feature: US1107634 - Remove Contract ID from Counterparty upon Contract Termination

  @TC564801
  @Automated
  @Functional
  Scenario: TC564801 - [RL0]
    Given I am the Entity Management Solution
    When the Contracting process is cancelled with a Counterparty
    Then I need the Contract ID status to change to an "Inactive" status
    And the Contract ID has an inactivation date

