# Last updated on 2018-07-30T22:50:59.816Z
@MVP
@Plus
@Priority_1
Feature: F186556 - Exari EM - Synchronize Contract Assignments

  @MVP
  @CLM_UAT
  @EXARI-10713
  @2018.PI03
  Scenario: US1107632
    Given I am Entity Management Solution
    When a Contract is signed and executed by the Counterparty
    Then the Contract ID is visible on the Counterparty record in "Active" status in the Entity Management Solution
    And the Contract ID has an effective date

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1107635
    Given I am Entity Management Solution
    When a Contract is signed and executed by the Provider
    Then the Contract ID is visible on the Provider record in "Active" status in the Entity Management Solution
    And the Contract ID has an effective date

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1107637
    Given I am the Entity Management Solution
    When the Contracting process is cancelled with a Provider
    Then I need the Contract ID status to change to an "Inactive" status
    And the Contract ID has an inactivation date

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1107634
    Given I am the Entity Management Solution
    When the Contracting process is cancelled with a Counterparty
    Then I need the Contract ID status to change to an "Inactive" status
    And the Contract ID has an inactivation date

