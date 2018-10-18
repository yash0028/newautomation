# Last updated on 
@US1374509
@Priority_1
@F218481
@releaseUnknown
@iterationUnknown
Feature: US1374509 - Synchronize Added MPIN

  @TC605566
  @Manual
  @Functional
  @US1374509
  Scenario: TC605566 - [RL0]
    Given I am the Entity Management Solution
    When an MPIN is added to a Provider in a Legacy Application
    And the Provider also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change

