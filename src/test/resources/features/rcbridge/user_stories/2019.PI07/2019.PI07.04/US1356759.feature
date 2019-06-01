# Last updated on 
@US1356759
@2019.PI07
@2019.PI07.04
@releasePresent
@iterationPresent
Feature: US1356759 - Contract Product Market number validation set (T3) [E2E]

  @TC596333
  @Manual
  @Functional
  Scenario: TC596333 - [RL0]
    Given a valid contract event is received
    When the contract record includes at least one market number
    Then the contract passes validation

  @TC611123
  @Manual
  @Functional
  Scenario: TC611123 - [RL1]
    Given a valid contract event is received
    When the contract record DOES NOT include at least one market number
    Then the contract does not pass validation
    And a message generated 'CONTRACT MISSING MARKET NUMBER'
    And a Type 3 error logged
    ###

