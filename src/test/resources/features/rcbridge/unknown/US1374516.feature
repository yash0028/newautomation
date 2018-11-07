# Last updated on 
@US1374516
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1374516 - Synchronize Updated TIN Name

  @TC605564
  @Manual
  @Functional
  Scenario: TC605564 - [RL0]
    Given I am the Entity Management Solution
    When a TIN Name is updated in a Legacy Application
    And the TIN Name also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change

