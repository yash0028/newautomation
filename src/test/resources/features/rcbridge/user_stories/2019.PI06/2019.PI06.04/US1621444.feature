# Last updated on 
@Archana
@Sachin
@Visio
@US1621444
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationPast
Feature: US1621444 - Modify denied by NPPP retro approval request

  @TC743381
  @Manual
  @Functional
  @Archana
  @Sachin
  @Visio
  Scenario: TC743381 - [RL0]
    Given the initiated form is returned to the requestor
    When the requestor opens the task
    Then the details on the form can be modified again
    And the denial reason and comments are shown
    And the name of the NPPP person who denied or requested more information is displayed

  @TC743521
  @Manual
  @Functional
  @Archana
  @Sachin
  @Visio
  Scenario: TC743521 - [RL1]
    Given I am the initiator or requestor (denied by NPPP)
    When I complete my modification on the task
    Then the request must re-route to NPPP
    And the denial reason and comments are still shown on the form

