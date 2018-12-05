# Last updated on 
@US1226816
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1226816 - Terminated BSAR/Provider Relationship

  @TC565632
  @Automated
  @Functional
  Scenario: TC565632 - [RL0]
    Given I am the Entity Management Solution
    When a BSAR to Provider relationship is terminated in NDB
    And the BSAR to Provider relationship exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated BSAR to Provider relationship is visible in the Entity Management Solution

