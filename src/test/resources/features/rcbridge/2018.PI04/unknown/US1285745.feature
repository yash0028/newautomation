# Last updated on 
@US1285745
@2018.PI04
@Priority_1
@F218481
@releasePresent
@iterationUnknown
Feature: US1285745 - Synchronize Updated MPIN

  @TC564626
  @Automated
  @Functional
  @US1285745
  @2018.PI04
  Scenario: TC564626 - [RL0]
    Given I am the Entity Management Solution
    When a MPIN is updated in a Legacy Application
    And the MPIN also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change

