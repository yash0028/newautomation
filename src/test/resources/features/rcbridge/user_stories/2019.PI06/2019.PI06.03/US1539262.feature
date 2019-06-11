# Last updated on 
@Sachin
@Visio
@US1539262
@2019.PI06
@2019.PI06.03
@releasePast
@iterationPast
Feature: US1539262 - Modify denied by ML retro approval request

  @TC743486
  @Manual
  @Functional
  @Sachin
  @Visio
  Scenario: TC743486 - [RL0]
    Given I am the initiator or requestor (denied by Market Lead)
    When I complete my modification on the task
    Then the request must re-route to Market Lead
    And the denial reason and comments are still shown on the form

