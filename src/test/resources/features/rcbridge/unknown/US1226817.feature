# Last updated on
@US1226817
@MVP
@Plus
@Priority_1
@F181492
@releaseUnknown
@iterationUnknown
Feature: US1226817 - Created BSAR/Provider Relationship

  @TC565160
  @Automated
  @Functional
  @US1226817
  Scenario: TC565160 - [RL0]
    Given I am the Entity Management Solution
    When a BSAR to Provider relationship is created in NDB
    And the Provider exists in Entity Management
    Then the Entity Management Solution is updated
    And the created BSAR to Provider relationship is visible in the Entity Management Solution

