# Last updated on 
@Sachin
@US1539262
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationPresent
Feature: US1539262 - Modify denied by ML retro approval request

  @TC743486
  @Manual
  @Functional
  @Sachin
  Scenario: TC743486 - [RL0]
    Given I am the initiator or requestor (denied by Market Lead)
    When I complete my modification on the task
    Then the request must re-route to Market Lead
    And the denial reason and comments are still shown on the form

  @RC_unlinked
  @TC743530
  @Manual
  @Functional
  @Sachin
  Scenario: TC743530 - [RL1]
    Given I am the initiator or requestor (denied by Market Lead)
    When I complete my modification on the task
    Then the request must re-route to Market Lead
    And the denial reason and comments are still shown on the form

