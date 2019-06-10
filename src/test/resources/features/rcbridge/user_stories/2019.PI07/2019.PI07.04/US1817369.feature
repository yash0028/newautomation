# Last updated on 
@Arvind
@US1817369
@2019.PI07
@2019.PI07.04
@releaseUnknown
@iterationUnknown
Feature: US1817369 - Add forms and text to tasks without them

  @TC831734
  @Manual
  @Functional
  @Arvind
  Scenario: TC831734 - [RL0]
    Given a task exists on the physician workflow
    When a user views the task
    Then there is a form with text.

