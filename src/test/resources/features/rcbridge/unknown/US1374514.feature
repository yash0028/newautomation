# Last updated on
@US1374514
@Priority_1
@F218481
@releaseUnknown
@iterationUnknown
Feature: US1374514 - Synchronize Deactivated TIN

  @TC605562
  @Manual
  @Functional
  @US1374514
  Scenario: TC605562 - [RL0]
    Given I am the Entity Management Solution
    When a TIN is deactivated in a Legacy Application
    And the TIN also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change

