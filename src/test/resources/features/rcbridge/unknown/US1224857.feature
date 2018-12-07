# Last updated on 
@US1224857
@releaseUnknown
@iterationUnknown
Feature: US1224857 - Terminated NPI/TIN Relationship

  @TC565552
  @Automated
  @Functional
  Scenario: TC565552 - [RL0]
    Given I am the Entity Management Solution
    When a NPI/TIN relationship is terminated in NDB
    And the NPI/TIN relationship exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated NPI/TIN relationship is visible in the Entity Management Solution

