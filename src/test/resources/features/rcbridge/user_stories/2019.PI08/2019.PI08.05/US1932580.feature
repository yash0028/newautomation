# Last updated on 
@US1932580
@2019.PI08
@2019.PI08.05
@releasePast
@iterationPast
Feature: US1932580 - Secure user group Created to Limit Access

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

