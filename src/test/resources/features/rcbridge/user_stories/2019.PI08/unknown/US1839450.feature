# Last updated on 
@US1839450
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1839450 - 60 Manual loading confirmation - Rate Escalator

  @TC843994
  @Manual
  @Functional
  Scenario: TC843994 - [RL0]
    Given a hopper exists for a fee schedule
    When a contract owner completes Submit for loading task
    Then a task "Confirm manual loading completed" is created
    And the text displayed in the form is "Please complete this task after you have confirmation that the agreement has been successfully loaded in our systems."
    And the task is assigned to the contract owner

