# Last updated on 
@US1094101
@MVP
@Priority_3
@releaseUnknown
@iterationUnknown
Feature: US1094101 - Approve Voided Identifier

  @TC565273
  @Automated
  @Functional
  Scenario: TC565273 - [RL0]
    Given I am a User with Approval Authority
    When a User voids an Identifier and submits for approval
    Then I can approve the Identifier void
    And the Identifier is removed from the Entity Management Solution
    And I can reject the Identifier void
    And the Identifier remains active in the Entity Management Solution

