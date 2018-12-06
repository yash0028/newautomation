# Last updated on 
@MVP
@US1374514
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1374514 - Synchronize Deactivated TIN

  @TC605562
  @Manual
  @Functional
  @MVP
  Scenario: TC605562 - [RL0]
    Given I am the Entity Management Solution
    When a TIN is deactivated in a Legacy Application
    And the TIN also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change
    And effective and expiration dates are updated in the Entity Management Solution

