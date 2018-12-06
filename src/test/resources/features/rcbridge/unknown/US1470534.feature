# Last updated on 
@MVP
@US1470534
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1470534 - Created MPIN/TIN Relationship Source

  @TC666519
  @Manual
  @Functional
  @MVP
  Scenario: TC666519 - [RL0]
    Given I am the Entity Management Solution
    When an MPIN/TIN relationship is established in a Legacy application
    And both the MPIN and the TIN exist in the Entity Management solution
    Then the relationship established in the Legacy application is reflected in the Entity Management Solution

