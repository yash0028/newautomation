# Last updated on 
@US1671061
@2019.PI07
@releaseFuture
@iterationUnknown
Feature: US1671061 - User group has no users

  @TC778999
  @Manual
  @Functional
  Scenario: TC778999 - [RL0]
    Given a process has looked at a User Group
    When there is no user in a User Group
    Then a task is created for the Admin "User group contains no users"
    And the process name
    And the User Group

