# Last updated on 
@MVP
@US1374510
@MVP
@Priority_2
@releaseUnknown
@iterationUnknown
Feature: US1374510 - Synchronize Deactivated MPIN

  @TC605567
  @Manual
  @Functional
  @MVP
  Scenario: TC605567 - [RL0]
    Given I am the Entity Management Solution
    When an MPIN is deactivated from a Provider in a Legacy Application
    And the MPIN also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change
    And effective and expiration dates are updated in the Entity Management Solution

