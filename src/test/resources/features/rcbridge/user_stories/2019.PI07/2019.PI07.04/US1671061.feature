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
    And the task is assigned to the "Activity_Manager_Administrator" User Group
    And the task contains the process name using the User Group
    And the task contains the task using the User Group
    And the task contains the User Group that has no users
    And the task contains the date of the error
    And there is text, "The process is using a User Group that contains no users. Please research the issue and complete the task once it is resolved."

  @TC831078
  @Manual
  @Functional
  Scenario: TC831078 - [RL1]
    Given a process has looked at a User Group
    When there is no user in a User Group
    Then an email is sent to the users in the "Activity_Manager_Administrator" User Group
    And the subject is "Activity Manager User Group with no users"
    And the body is "Please log into Activity Manager and view the <task id>for details."

