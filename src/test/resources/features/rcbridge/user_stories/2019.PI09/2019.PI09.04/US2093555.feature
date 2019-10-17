# Last updated on 
@US2093555
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US2093555 - Canned emails

  @TC1005298
  @Manual
  @Functional
  Scenario: TC1005298 - [RL0]
    Given the physician negotiation exists (including sub-processes)
    When a task is created
    Then the automatic system email "A task has been created for you" is not generated

  @TC1005299
  @Manual
  @Functional
  Scenario: TC1005299 - [RL1]
    Given the retro approval process exists
    When a task is created
    Then the automatic system email "A task has been created for you" is not generated

  @TC1005300
  @Manual
  @Functional
  Scenario: TC1005300 - [RL2]
    Given the escalator process exists
    When a task is created
    Then the automatic system email "A task has been created for you" is not generated

