# Last updated on 2018-06-19T15:00:14.469Z
@MVP
@Plus
@Priority_1
Feature: F186556 - Synchronize Contract Assignments

  @MVP
  @2018.PI03
  Scenario: US1107626
    Given I am the Entity Management Solution
    When the Interview process is cancelled with a Provider
    Then I need the Contract ID to be removed from the Provider record in the Entity Management Solution

  @MVP
  @2018.PI03
  Scenario: US1107624
    Given I am the Entity Management Solution
    When the Interview process is cancelled with a Counterparty
    Then I need the Contract ID to be removed from the Counterparty record in the Entity Management Solution

  @MVP
  @2018.PI03
  Scenario: US1107625
    Given I am the Entity Management Solution
    When a Provider enters the Interview process
    Then the Contract ID is visible on the Provider record in "Draft" status in the Entity Management Solution

  @MVP
  @EXARI-10713
  @2018.PI03
  Scenario: US1107632
    Given I am Entity Management Solution
    When a Contract is signed and executed by the Counterparty
    Then the Contract ID is visible on the Counterparty record in "Active" status in the Entity Management Solution

  @MVP
  @2018.PI03
  Scenario: US1107635
    Given I am Entity Management Solution
    When a Contract is signed and executed by the Provider
    Then the Contract ID is visible on the Provider record in "Active" status in the Entity Management Solution

  @MVP
  @2018.PI03
  Scenario: US1107637
    Given I am the Entity Management Solution
    When the Contracting process is cancelled with a Provider
    Then I need the Contract ID to be removed from the Provider record in the Entity Management Solution

  @MVP
  @2018.PI03
  Scenario: US1107634
    Given I am the Entity Management Solution
    When the Contracting process is cancelled with a Counterparty
    Then I need the Contract ID to be removed from the Counterparty record in the Entity Management Solution

  @MVP
  @2018.PI03
  Scenario: US1107622
    Given I am Entity Management Solution
    When a Counterparty enters the Interview process
    Then the Contract ID is visible on the Counterparty record in "Draft" status in the Entity Management Solution

