# Last updated on 
@US1224846
@MVP
@Plus
@Priority_1
@F181492
@releaseUnknown
@iterationUnknown
Feature: US1224846 - Terminated TIN

  @TC565054
  @Automated
  @Functional
  @US1224846
  Scenario: TC565054 - [RL0]
    Given I am the Entity Management Solution
    When a TIN is terminated in NDB
    And the TIN exists in the Entity Management Solution
    Then the Entity Management Solution is updated
    And the TIN is expired in the Entity Management Solution

