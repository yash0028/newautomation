# Last updated on 
@US1842462
@2019.PI08
@2019.PI08.01
@releaseFuture
@iterationFuture
Feature: US1842462 - 64 Systematic loading confirmation - Rate Escalator

  @TC843992
  @Manual
  @Functional
  Scenario: TC843992 - [RL0]
    Given a hopper exists for a fee schedule
    When a contract owner completes Submit for loading task
    Then a task "Loading: Confirm Systematically completed" is created
    And the text displayed in the form is "Please complete this task after you have confirmation that the agreement has been systematically and successfully loaded in our systems."
    And the task is assigned to the contract owner

