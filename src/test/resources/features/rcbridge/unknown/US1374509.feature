# Last updated on 
@MVP
@US1374509
@MVP
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1374509 - Synchronize Added MPIN

  @TC605566
  @Manual
  @Functional
  @MVP
  Scenario: TC605566 - [RL0]
    Given I am the Entity Management Solution
    When an MPIN is added to a Provider in a Legacy Application
    And the Provider also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change
    And effective and expiration dates are updated in the Entity Management Solution

