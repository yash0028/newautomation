# Last updated on 
@MVP
@US1469827
@MVP
@Priority_2
@releaseUnknown
@iterationUnknown
Feature: US1469827 - Synchronize Removed MPIN TIN Relationship

  @TC666353
  @Manual
  @Functional
  @MVP
  Scenario: TC666353 - [RL0]
    Given I am the Entity Management Solution
    When an MPIN/TIN relationship is removed in a legacy application
    And both the MPIN and the TIN exist in the Entity Management Solution
    Then the Entity Management Solution expires the MPIN TIN relationship

