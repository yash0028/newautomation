# Last updated on 
@US1107624
Feature: US1107624 - Remove Contract ID from Counterparty upon Interview Termination

  @TC565257
  @Automated
  @Functional
  Scenario: TC565257 - [RL0]
    Given I am the Entity Management Solution
    When the Interview process is cancelled with a Counterparty
    Then I need the Contract ID status to change to an "Inactive" status
    And the Contract ID has an inactivation date

