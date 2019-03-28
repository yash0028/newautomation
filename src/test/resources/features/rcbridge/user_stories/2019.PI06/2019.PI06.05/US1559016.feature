# Last updated on 
@Visio
@US1559016
@2019.PI06
@2019.PI06.05
@releasePresent
@iterationFuture
Feature: US1559016 - Modify expired retro approval request

  @TC743374
  @Manual
  @Functional
  @Visio
  Scenario: TC743374 - [RL0]
    Given approved retro request has expired and is returned to the requestor
    When the requestor opens the task
    Then the details on the form can be modified
    And the status of expiration is shown
    Given I am the initiator or requestor
    When I complete my modification on the task
    Then the request must re-route to Market Lead

