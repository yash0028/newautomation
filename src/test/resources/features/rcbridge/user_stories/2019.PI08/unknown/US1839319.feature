# Last updated on 
@US1839319
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1839319 - 6 Update Agreement Fee Schedule Detail for Hoppers - Rate Escalator

  @TC843988
  @Manual
  @Functional
  Scenario: TC843988 - [RL0]
    Given a hopper exists for a fee schedule
    When a contract owner updates agreement for fee schedule detail
    Then a task "Update Agreement Fee Schedule Detail" is created
    And the text displayed in the form is "Please complete this task after you have updated the Fee Schedules in Exari."

