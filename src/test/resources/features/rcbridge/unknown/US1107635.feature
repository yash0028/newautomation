# Last updated on 
@MVP
@CLM_UAT
@US1107635
@MVP
@Priority_3
@releaseUnknown
@iterationUnknown
Feature: US1107635 - Associate Contract ID to Provider upon Contract Execution

  @TC565773
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  Scenario: TC565773 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When a Contract is signed and executed for a Provider
    Then the Contract ID is visible on the Provider record in "Active" status in the Entity Management Solution
    And the Contract ID has an effective date
    And the Contract ID has a renewal date

