# Last updated on 
@MVP
@Plus
@Priority_1
@F186556
Feature: F186556 - Exari EM - Synchronize Contract Assignments

  @MVP
  @CLM_UAT
  @EXARI-10713
  @US1107632
  Scenario: US1107632 - Associate Contract ID to Counterparty upon Contract Execution
    Given I am Entity Management Solution
    When a Contract is signed and executed by the Counterparty
    Then the Contract ID is visible on the Counterparty record in "Active" status in the Entity Management Solution
    And the Contract ID has an effective date

  @MVP
  @CLM_UAT
  @US1107635
  Scenario: US1107635 - Associate Contract ID to Provider upon Contract Execution
    Given I am Entity Management Solution
    When a Contract is signed and executed by the Provider
    Then the Contract ID is visible on the Provider record in "Active" status in the Entity Management Solution
    And the Contract ID has an effective date

  @MVP
  @CLM_UAT
  @US1107637
  Scenario: US1107637 - Remove Contract ID from Provider upon Contract Termination
    Given I am the Entity Management Solution
    When the Contracting process is cancelled with a Provider
    Then I need the Contract ID status to change to an "Inactive" status
    And the Contract ID has an inactivation date

  @MVP
  @CLM_UAT
  @US1107634
  Scenario: US1107634 - Remove Contract ID from Counterparty upon Contract Termination
    Given I am the Entity Management Solution
    When the Contracting process is cancelled with a Counterparty
    Then I need the Contract ID status to change to an "Inactive" status
    And the Contract ID has an inactivation date

