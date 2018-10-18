# Last updated on 
@US1094100
@Plus
@F137658
@releaseUnknown
@iterationUnknown
Feature: US1094100 - Approve Inactivated Identifier Relationship with Entity

  @TC565667
  @Automated
  @Functional
  @US1094100
  Scenario: TC565667 - [RL0]
    Given I am a User with Approval Authority
    When a User inactivates an Identifier relationship with an Entity and submits for approval
    Then I can approve the Identifier relationship inactivation
    And the Identifier relationship becomes inactive in the Entity Management Solution
    And I can reject the Identifier relationship inactivation
    And the Identifier remains actively associated with the Entity in the Entity Management Solution

