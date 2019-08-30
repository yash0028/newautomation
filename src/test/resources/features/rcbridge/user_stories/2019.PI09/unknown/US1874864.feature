# Last updated on 
@US1874864
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1874864 - Rename process name

  @TC868374
  @Manual
  @Functional
  Scenario: TC868374 - [RL0]
    Given a user has created a process with a name that doesn't follow the prescribed naming convention or is a duplicate name
    When it determines it should be changed
    Then the assigned Playbook Owner can rename the process
    And the "Activity Manager Support" user group is an involved user
    And there task, "Rename Process"
    And the task is created upon creation of the process
    And there is text, "Please use this task to rename the process if needed."
    And the current name of the process is displayed
    And there is a required field, "New Process Name" that is a free form text field
    And upon completion of this task, a new instance of the task, "Rename Process" is created

