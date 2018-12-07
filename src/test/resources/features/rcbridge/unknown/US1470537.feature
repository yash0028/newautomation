# Last updated on 
@MVP
@US1470537
@MVP
@Priority_2
@releaseUnknown
@iterationUnknown
Feature: US1470537 - Terminated MPIN/TIN Relationship Source

  @TC666517
  @Manual
  @Functional
  @MVP
  Scenario: TC666517 - [RL0]
    Given I am the Entity Management Solution
    When an MPIN/TIN relationship is terminated in a Legacy application
    And both the MPIN and the TIN exist in the Entity Management solution
    Then the relationship terminated in the Legacy application is reflected in the Entity Management Solution

