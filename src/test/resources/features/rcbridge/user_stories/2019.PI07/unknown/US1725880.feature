# Last updated on 
@Visio
@US1725880
@2019.PI07
@releasePresent
@iterationUnknown
Feature: US1725880 - Unable to locate Market Lead User Groups

  @TC808657
  @Manual
  @Functional
  @Visio
  Scenario: TC808657 - [RL0]
    Given a process is searching for a user group using logic
    When the logic is unable to find a matching user group
    Then the admin is sent an email
    And the subject is "Retro - User Group not found"
    And the body is "Please log into Activity Manager and view the involved tasks for details. Market <

