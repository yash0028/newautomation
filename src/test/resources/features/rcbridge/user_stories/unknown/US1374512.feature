# Last updated on 
@US1374512
@Priority_1
@F218481
Feature: US1374512 - Synchronize Deactivated Provider

  @TC605565
  @Manual
  @Functional
  @US1374512
  Scenario: TC605565 - [RL0]
    Given I am the Entity Management Solution
    When a Provider is deactivated in a Legacy Application
    And the Provider also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change

