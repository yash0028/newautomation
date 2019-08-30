# Last updated on 
@US1860563
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1860563 - User group has no users - Terminations

  @TC857031
  @Manual
  @Functional
  Scenario: TC857031 - [RL0]
    Given a process has looked at a User Group
    When there is no user in a User Group
    Then a task is created "User group contains no users"
    And the task is assigned to the "Activity_Manager_Support" User Group
    And the task contains the process name using the User Group
    And the task contains the task using the User Group
    And the task contains the User Group that has no users
    And the task contains the date of the error
    And there is text, "The process is using a User Group that contains no users. Please research the issue and complete the task once it is resolved."

  @TC857036
  @Manual
  @Functional
  Scenario: TC857036 - [RL1]
    Given a process has looked at a User Group
    When there is no user in a User Group
    Then an email is sent to the users in the "Activity_Manager_Support" User Group
    And the subject is "Activity Manager User Group with no users"
    And the body is "Please log into Activity Manager and view the <task id>for details."

  @TC857038
  @Manual
  @Functional
  Scenario: TC857038 - [RL2]
    Given as task is assigned to a User Group
    When there is only one person in the User Group
    Then the person does not have to claim the task

