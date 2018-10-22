# Last updated on 
@US1374510
@Priority_1
@F218481
@releaseUnknown
@iterationUnknown
Feature: US1374510 - Synchronize Deactivated MPIN

  @TC605567
  @Manual
  @Functional
  @US1374510
  Scenario: TC605567 - [RL0]
    Given I am the Entity Management Solution
    When an MPIN is deactivated from a Provider in a Legacy Application
    And the MPIN also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change

