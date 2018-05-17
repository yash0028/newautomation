# Last updated on 2018-05-07T19:40:00.056Z
@MVP
Feature: F186556 - Synchronize Contract Assignments

  Scenario: US1107626
    Given I am the Entity Management Solution
    When the Interview process is cancelled with a Provider
    Then I need the Contract ID to be removed from the Provider record in the Entity Management Solution

  Scenario: US1107624
    Given I am the Entity Management Solution
    When the Interview process is cancelled with a Counterparty
    Then I need the Contract ID to be removed from the Counterparty record in the Entity Management Solution

  Scenario: US1107625
    Given I am the Entity Management Solution
    When a Provider enters the Interview process
    Then the Contract ID is visible on the Provider record in "Draft" status in the Entity Management Solution

  Scenario: US1107632
    Given I am Entity Management Solution
    When a Contract is signed and executed by the Counterparty
    Then the Contract ID is visible on the Counterparty record in "Active" status in the Entity Management Solution

  Scenario: US1107635
    Given I am Entity Management Solution
    When a Contract is signed and executed by the Provider
    Then the Contract ID is visible on the Provider record in "Active" status in the Entity Management Solution

  Scenario: US1107637
    Given I am the Entity Management Solution
    When the Contracting process is cancelled with a Provider
    Then I need the Contract ID to be removed from the Provider record in the Entity Management Solution

  Scenario: US1107634
    Given I am the Entity Management Solution
    When the Contracting process is cancelled with a Counterparty
    Then I need the Contract ID to be removed from the Counterparty record in the Entity Management Solution

  Scenario: US1107622
    Given I am Entity Management Solution
    When a Counterparty enters the Interview process
    Then the Contract ID is visible on the Counterparty record in "Draft" status in the Entity Management Solution

