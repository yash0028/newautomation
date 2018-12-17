# Last updated on 
@MVP
@US1469823
@MVP
@Priority_2
@releaseUnknown
@iterationUnknown
Feature: US1469823 - Synchronize Created MPIN TIN Relationship

  @TC666355
  @Manual
  @Functional
  @MVP
  Scenario: TC666355 - [RL0]
    Given I am the Entity Management Solution
    When an MPIN/TIN relationship is created in a legacy application
    And both the MPIN and the TIN exist in the Entity Management Solution
    Then the Entity Management Solution shows the MPIN and TIN as Relationship Type "Related"

