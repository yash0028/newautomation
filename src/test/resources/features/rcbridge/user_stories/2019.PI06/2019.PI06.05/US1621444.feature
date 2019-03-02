# Last updated on 
@US1621444
@2019.PI06
@2019.PI06.05
@releasePresent
@iterationFuture
Feature: US1621444 - Modify denied by NPPP retro approval request

  @TC743381
  @Manual
  @Functional
  Scenario: TC743381 - [RL0]
    Given the initiated form is returned to the requestor
    When the requestor opens the task
    Then the details on the form can be modified again
    And the denial reason and comments are shown

