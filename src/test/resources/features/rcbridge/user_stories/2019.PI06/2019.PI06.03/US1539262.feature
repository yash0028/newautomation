# Last updated on 
@US1539262
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationFuture
Feature: US1539262 - Modify denied by ML retro approval request

  @TC743486
  @Manual
  @Functional
  Scenario: TC743486 - [RL0]
    Given the initiated form is returned to the requestor
    When the requestor opens the task
    Then the details on the form can be modified again
    And the denial reason and comments are shown

  @TC743530
  @Manual
  @Functional
  Scenario: TC743530 - [RL1]
    Given I am the initiator or requestor (denied by Market Lead)
    When I complete my modification on the task
    Then the request must re-route to Market Lead
    And the denial reason and comments are still shown on the form

