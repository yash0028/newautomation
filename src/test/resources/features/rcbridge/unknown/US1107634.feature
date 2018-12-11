# Last updated on 
@MVP
@CLM_UAT
@US1107634
@MVP
@releaseUnknown
@iterationUnknown
Feature: US1107634 - Remove Contract ID from Counterparty upon Contract Termination

  @TC564801
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  Scenario: TC564801 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When a contract with a Counterparty is terminated
    Then I need the Contract ID status to change to an "Inactive" status in the Entity Management Solution
    And the Contract ID has an inactivation date

