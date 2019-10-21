# Last updated on 
@US2092781
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationFuture
Feature: US2092781 - Dev Clean Up in APS

  @TC1013511
  @Manual
  @Functional
  Scenario: TC1013511 - [RL0]
    Given an old item exists
    When it is determined that it is old
    Then the item is deleted or marked for deletion

