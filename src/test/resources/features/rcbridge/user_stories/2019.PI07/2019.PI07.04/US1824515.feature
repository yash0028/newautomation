# Last updated on 
@US1824515
@2019.PI07
@2019.PI07.04
@releasePresent
@iterationPresent
Feature: US1824515 - User group has no users - Physician

  @TC835334
  @Manual
  @Functional
  Scenario: TC835334 - [RL0]
    Given a process has looked at a User Group
    When there is no user in a User Group
    Then a task is created "User group contains no users"
    And the task is assigned to the "Activity_Manager_Administrator" User Group
    And the task contains the process name using the User Group
    And the task contains the task using the User Group
    And the task contains the User Group that has no users
    And the task contains the date of the error
    And there is text, "The process is using a User Group that contains no users. Please research the issue and complete the task once it is resolved."

  @TC835340
  @Manual
  @Functional
  Scenario: TC835340 - [RL1]
    Given a process has looked at a User Group
    When there is no user in a User Group
    Then an email is sent to the users in the "Activity_Manager_Administrator" User Group
    And the subject is "Activity Manager User Group with no users"
    And the body is "Please log into Activity Manager and view the <task id>for details."
