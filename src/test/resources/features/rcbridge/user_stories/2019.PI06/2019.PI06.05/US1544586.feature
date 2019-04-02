# Last updated on 
@US1544586
@2019.PI06
@2019.PI06.05
@releasePresent
@iterationFuture
Feature: US1544586 - Task Assignment- NPPP Requires COO Decision

  @TC709186
  @Manual
  @Functional
  Scenario: TC709186 - [RL0]
    Given the task is completed and reviewed by NPPP
    When NPPP chooses "COO Approval Needed"
    Then the notification for retro approval request email is sent to each impacted COO as contained within the "Initiate Retro Form"
    And a task is assigned to each impacted COO tasklist to take decision

