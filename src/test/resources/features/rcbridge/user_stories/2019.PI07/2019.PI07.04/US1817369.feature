# Last updated on 
@Arvind
@No_QE
@US1817369
@2019.PI07
@2019.PI07.04
@releasePresent
@iterationPresent
Feature: US1817369 - Add forms and text to tasks without them

  @TC831734
  @Manual
  @Functional
  @Arvind
  @No_QE
  Scenario: TC831734 - [RL0]
    Given a task exists on the physician workflow
    When a user views the task
    Then there is a form with text.

