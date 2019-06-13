# Last updated on 
@Adele_R
@US1849133
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1849133 - 7 Interim PBC Report - Rate Escalator

  @TC848051
  @Manual
  @Functional
  @Adele_R
  Scenario: TC848051 - [RL0]
    Given a rate escalator exists
    When the task "Deliver Interim PBC Reports" is created
    Then the assignee is the Process Initiator or the Contractor
    And the text displayed in the form is "Please complete this task after you have sent the Interim PBC Reports to the provider"
    And a due date of 9 months from start of the measurement period.

