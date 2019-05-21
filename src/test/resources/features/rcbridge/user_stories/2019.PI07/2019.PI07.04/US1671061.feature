# Last updated on 
@US1671061
@2019.PI07
@2019.PI07.04
@releasePresent
@iterationFuture
Feature: US1671061 - User group has no users

  @TC778999
  @Manual
  @Functional
  Scenario: TC778999 - [RL0]
    Given a process has looked at a User Group
    When there is no user in a User Group
    Then a task is created "User group contains no users"
    And the task is assigned to the "Operations" User Group
    And the task contains the process name using the User Group
    And the task contains the task using the User Group
    And the task contains the User Group that has no users
    And the task contains the date of the error

