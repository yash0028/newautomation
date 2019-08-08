# Last updated on 
@US1932580
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationPresent
Feature: US1932580 - Limit edit access by Secure user group

  @TC905912
  @Manual
  @Functional
  Scenario: TC905912 - [RL0]
    Given a user has CMD edit access
    When they need to make a modification to the configuration record
    Then the user is able to click the edit button
    And the editable fields become open for edit

  @TC905916
  @Manual
  @Functional
  Scenario: TC905916 - [RL1]
    Given a user does not have CMD edit access
    When they need to make a modification to the configuration record
    Then the user is unable to click the edit button
    And the editable fields remain read only

