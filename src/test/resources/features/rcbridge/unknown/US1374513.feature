# Last updated on 
@US1374513
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1374513 - Synchronize Updated TIN

  @TC605563
  @Manual
  @Functional
  Scenario: TC605563 - [RL0]
    Given I am the Entity Management Solution
    When a TIN is updated in a Legacy Application
    And the TIN also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change

