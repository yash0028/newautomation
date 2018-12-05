# Last updated on 
@MVP
@US1285744
@2019.PI06
@MVP
@Plus
@Priority_1
@releaseFuture
@iterationUnknown
Feature: US1285744 - Synchronize Updated Name

  @TC565122
  @Automated
  @Functional
  @MVP
  Scenario: TC565122 - [RL0]
    Given I am the Entity Management Solution
    When an Entity Name is updated in a Legacy Application
    And the Entity Name also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change
    And effective and expiration dates are updated in the Entity Management Solution

