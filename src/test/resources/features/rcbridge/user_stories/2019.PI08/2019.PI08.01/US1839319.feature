# Last updated on 
@Arvind
@US1839319
@2019.PI08
@2019.PI08.01
@releaseFuture
@iterationFuture
Feature: US1839319 - 6 & 59 Update Agreement Fee Schedule Detail & Submit for Loading a contract for Hoppers - Rate Escalator

  @TC843988
  @Manual
  @Functional
  @Arvind
  Scenario: TC843988 - [RL0]
    Given a hopper exists for a fee schedule
    When a contract owner updates agreement for fee schedule detail
    Then a task "Update Agreement Fee Schedule Detail" is created
    And the text displayed in the form is "Please complete this task after you have updated the Fee Schedules in Exari."

  @TC866269
  @Manual
  @Functional
  @Arvind
  Scenario: TC866269 - [RL1]
    Given the agreement is a Fee Schedule hopper
    When a contract owner completes the "Update Agreement Fee Schedule Detail" task
    Then a task "Loading: Submit for loading" task is created
    And the text displayed in the form is "Please complete this task after you have submitted the agreement for loading."
    And the task is assigned to the Contract Owner

