# Last updated on 
@US1439940
@2018.PI04
@2018.PI04.05
@releaseUnknown
@iterationUnknown
Feature: US1439940 - Sonar Code Ceverage Transition

  @TC652803
  @Manual
  @Functional
  Scenario: TC652803 - [RL0]
    When the automated tests for the fallout-service are executed
    Then at leat 70% of the code is covered by the test cases

  @TC652804
  @Manual
  @Functional
  Scenario: TC652804 - [RL1]
    When the automated tests for the cosmos-validator-domain service are executed
    Then at leat 70% of the code is covered by the test cases

  @TC652805
  @Manual
  @Functional
  Scenario: TC652805 - [RL2]
    When the automated tests for the approval-coordinator service are executed
    Then at leat 70% of the code is covered by the test cases

