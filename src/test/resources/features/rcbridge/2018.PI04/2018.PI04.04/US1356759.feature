# Last updated on 
@US1356759
@2018.PI04
@2018.PI04.04
@CMD
@Priority_2
@F224328
@releasePresent
@iterationFuture
Feature: US1356759 - Contract Product Market number validation set (T3)

  @TC596333
  @Manual
  @Functional
  @US1356759
  @2018.PI04
  @2018.PI04.04
  Scenario: TC596333 - [RL0]
    Given a valid contract event is received
    When the contract record includes at least one market number
    Then the contract passes validation

  @TC611123
  @Manual
  @Functional
  @US1356759
  @2018.PI04
  @2018.PI04.04
  Scenario: TC611123 - [RL1]
    Given a valid contract event is received
    When the contract record DOES NOT include at least one market number
    Then the contract does not pass validation
    And a message generated 'CONTRACT MISSING MARKET NUMBER'
    And a Type 3 error logged
    ###

