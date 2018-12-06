# Last updated on 
@MVP
@US1374512
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1374512 - Synchronize Deactivated Provider

  @TC605565
  @Manual
  @Functional
  @MVP
  Scenario: TC605565 - [RL0]
    Given I am the Entity Management Solution
    When a Provider is deactivated in a Legacy Application
    And the Provider also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change
    And effective and expiration dates are updated in the Entity Management Solution

