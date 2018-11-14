# Last updated on 
@US1094096
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1094096 - Approve Inactivated Entity

  @TC565619
  @Automated
  @Functional
  Scenario: TC565619 - [RL0]
    Given I am a User with Approval Authority
    When a User inactivates an Entity and submits for approval
    Then I can approve the Entity inactivation
    And the Entity becomes inactive in the Entity Management Solution
    And I can reject the Entity inactivation
    And the Entity remains active in the Entity Management Solution

