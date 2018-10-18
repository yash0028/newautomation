# Last updated on 
@US1094107
@Plus
@F137658
@releaseUnknown
@iterationUnknown
Feature: US1094107 - Approve Inactivated Entity Demographic Info

  @TC564422
  @Automated
  @Functional
  @US1094107
  Scenario: TC564422 - [RL0]
    Given I am a User with Approval Authority
    When a User inactivates Entity Demographic information and submits for approval
    Then I can approve the Entity Demographic information inactivation
    And the Entity Demographic information becomes inactive in the Entity Management Solution
    And I can reject the Entity Demographic information inactivation
    And the Entity Demographic information remains active in the Entity Management Solution

