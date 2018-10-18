# Last updated on 
@US1285744
@2018.PI04
@Priority_1
@F218481
@releasePresent
@iterationUnknown
Feature: US1285744 - Synchronize Updated Name

  @TC565122
  @Automated
  @Functional
  @US1285744
  @2018.PI04
  Scenario: TC565122 - [RL0]
    Given I am the Entity Management Solution
    When an Entity Name is updated in a Legacy Application
    And the Entity Name also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change

