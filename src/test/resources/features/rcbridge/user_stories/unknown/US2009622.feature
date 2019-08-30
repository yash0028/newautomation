# Last updated on 
@US2009622
@releaseUnknown
@iterationUnknown
Feature: US2009622 - Display TransactionOwner (Mass Actions)

  @TC958736
  @Manual
  @Functional
  Scenario: TC958736 - [RL0]
    Given a user has access to the Mass Action tab in CMD
    When they click on Mass Actions in the upper right of the screen
    Then they will see the TransactionOwner for each Mass Action listed
    And the previously displayed data elements will also be displayed

