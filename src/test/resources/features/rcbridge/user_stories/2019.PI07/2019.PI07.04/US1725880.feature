# Last updated on 
@Visio
@Sheham
@US1725880
@2019.PI07
@2019.PI07.04
@releasePast
@iterationPast
Feature: US1725880 - Unable to locate Market Lead User Groups

  @TC808657
  @Manual
  @Functional
  @Visio
  @Sheham
  Scenario: TC808657 - [RL0]
    Given a process is searching for a user group using logic
    When the logic is unable to find a matching user group
    Then the user group "Activity_Manager_Administrator" users are sent an email
    And the subject is "Activity Manager User Group not found"
    And the body is "Please log into Activity Manager and view the <task id>for details."

  @TC814470
  @Manual
  @Functional
  @Visio
  @Sheham
  Scenario: TC814470 - [RL1]
    Given a process is searching for a user group using logic
    When the logic is unable to find a matching user group
    Then a task is created, "Retro - Market Lead User Group not found"
    And the task is assigned to the user group ""Activity_Manager_Administrator"
    And there is text, "The Retro Approval Process was unable to locate a Market Lead User Group. Please research the issue and complete the task once it is resolved."
    And the task contains the details of the retro approval request (deal id, counterparty name, counterparty tin, counterparty mpin, Site, State, Market, Paper Type, contract owner, Planned Effective Date)
    And there is a field, "Comments"
    And there is a field to add the appropriate User Group

  @TC837719
  @Manual
  @Functional
  @Visio
  @Sheham
  Scenario: TC837719 - [RL2]
    Given the appropriate User Group has been added
    When the user completes the task
    Then the User Group is assigned the next task

