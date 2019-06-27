# Last updated on 
@#Optum
@AM-Terminations
@US1550629
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1550629 - Integration - Prevent Duplicate Termination Processes

  @TC743459
  @Manual
  @Functional
  @#Optum
  @AM-Terminations
  Scenario: TC743459 - [RL0]
    Given a contract id is input on the "Capture Contract Details" task
    When the contract id exists on an open termination process
    Then the user see a message, "This Contract ID is part of <Termination Event ID>, <Termination Event Name>."
    And the user can remove the Contract ID from the event

