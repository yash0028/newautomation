# Last updated on 
@US1094112
@Plus
@F137658
@releaseUnknown
@iterationUnknown
Feature: US1094112 - Approve Inactivated Entity Characteristic Info

  @TC564648
  @Automated
  @Functional
  @US1094112
  Scenario: TC564648 - [RL0]
    Given I am a User with Approval Authority
    When a User inactivates Entity Characteristic information and submits for approval
    Then I can approve the Entity Characteristic information inactivation
    And the Entity Characteristic information becomes inactive in the Entity Management Solution
    And I can reject the Entity Characteristic information inactivation
    And the Entity Characteristic information remains active in the Entity Management Solution

