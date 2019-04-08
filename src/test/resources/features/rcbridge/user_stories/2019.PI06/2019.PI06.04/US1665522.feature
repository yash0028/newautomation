# Last updated on 
@Archana
@Sachin
@US1665522
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationPast
Feature: US1665522 - Modify denied by ML retro approval request

  @TC759645
  @Manual
  @Functional
  @Archana
  @Sachin
  Scenario: TC759645 - [RL0]
    Given the initiated form is returned to the requestor
    When the requestor opens the task
    Then the details on the form can be modified again
    And the denial reason and comments are shown
    And the name of the Market Lead who denied or requested more information is displayed

