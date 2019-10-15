# Last updated on 
@Suman
@US2062862
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPresent
Feature: US2062862 - Locked Language - Market Lead User Groups

  @TC987532
  @Manual
  @Functional
  @Suman
  Scenario: TC987532 - [RL0]
    Given the physician process has a locked language request
    When the Market Lead routing is done
    Then the Physician Local Contract Approver user groups are used
    And the group is chosen based upon market number

