# Last updated on
@US1224987
@MVP
@Plus
@Priority_1
@F181492
@releaseUnknown
@iterationUnknown
Feature: US1224987 - Created UHC ID/Provider Relationship

  @TC565677
  @Automated
  @Functional
  @US1224987
  Scenario: TC565677 - [RL0]
    Given I am the Entity Management Solution
    When a UHC ID to Provider relationship is created in NDB
    And the Provider exists in Entity Management
    Then the Entity Management Solution is updated
    And the created UHC ID to Provider relationship is visible in the Entity Management Solution

