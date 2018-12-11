# Last updated on 
@MVP
@CLM_UAT
@EXARI-10713
@US1107632
@MVP
@releaseUnknown
@iterationUnknown
Feature: US1107632 - Associate Contract ID to Counterparty upon Contract Execution

  @TC565140
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-10713
  Scenario: TC565140 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When a Contract is signed and executed by a Counterparty
    Then the Contract ID is visible on the Counterparty record in "Active" status in the Entity Management Solution
    And the Contract ID has an effective date
    And the Contract ID has a renewal date

