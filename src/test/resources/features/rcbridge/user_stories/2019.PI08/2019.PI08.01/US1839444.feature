# Last updated on 
@Arvind
@US1839444
@2019.PI08
@2019.PI08.01
@releaseFuture
@iterationFuture
Feature: US1839444 - 59 Submit for Loading a contract - Rate Escalator

  @TC843987
  @Manual
  @Functional
  @Arvind
  Scenario: TC843987 - [RL0]
    Given the agreement is a Fee Schedule hopper
    When a contract owner completes the "Update Agreement Fee Schedule Detail" task
    Then a task "Loading: Submit for loading" task is created
    And the text displayed in the form is "Please complete this task after you have submitted the agreement for loading."
    And the task is assigned to the Contract Owner

