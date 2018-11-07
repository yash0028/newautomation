# Last updated on 
@US1225008
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1225008 - Created NPI/Provider Relationship

  @TC565786
  @Automated
  @Functional
  Scenario: TC565786 - [RL0]
    Given I am the Entity Management Solution
    When an NPI to Provider relationship is created in NDB
    And the Provider exists in Entity Management
    Then the Entity Management Solution is updated
    And the created NPI to Provider relationship is visible in the Entity Management Solution

