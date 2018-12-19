# Last updated on 
@MVP
@CLM_UAT
@US1107637
@MVP
@Priority_3
@releaseUnknown
@iterationUnknown
Feature: US1107637 - Remove Contract ID from Entity upon Contract Termination

  @TC564537
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  Scenario: TC564537 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When a contract with an Entity is terminated
    Then I need the Contract ID status to change to an "Inactive" status in the Entity Management Solution
    And the Contract ID has an inactivation date

