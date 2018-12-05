# Last updated on 
@US1224893
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1224893 - Terminated UHC ID/Provider Relationship

  @TC565289
  @Automated
  @Functional
  Scenario: TC565289 - [RL0]
    Given I am the Entity Management Solution
    When a UHC ID to Provider relationship is terminated in NDB
    And the UHC ID to Provider relationship exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated UHC ID to Provider relationship is visible in the Entity Management Solution

