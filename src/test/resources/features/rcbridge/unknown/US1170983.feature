# Last updated on 
@MVP
@CLM_UAT
@US1170983
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1170983 - Approve Reactivated Entity

  @TC564995
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  Scenario: TC564995 - [RL0]
    Given I am a User with Approval Authority
    When a User reactivates an Entity
    Then I can approve the Entity reactivation
    And the Entity becomes active in the Entity Management Solution
    And I can reject the Entity reactivation
    And the Entity remains inactive in the Entity Management Solution

