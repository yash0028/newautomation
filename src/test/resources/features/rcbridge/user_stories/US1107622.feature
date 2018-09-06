# Last updated on 
@US1107622
Feature: US1107622 - Associate Interview Contract ID to Counterparty

  @TC565861
  @Automated
  @Functional
  Scenario: TC565861 - [RL0]
    Given I am Entity Management Solution
    When a Counterparty enters the Interview process
    Then the Contract ID is visible on the Counterparty record in "Draft" status in the Entity Management Solution
    And the Contract ID has an effective date

