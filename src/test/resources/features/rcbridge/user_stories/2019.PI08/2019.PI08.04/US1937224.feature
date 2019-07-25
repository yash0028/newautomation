# Last updated on 
@Arvind
@Adele_R
@US1937224
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationFuture
Feature: US1937224 - 7 Interim Report - Rate Escalator

  @TC911636
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC911636 - [RL0]
    Given a variable rate escalator exists with PBC as variable basis
    When the task "Deliver Interim PBC Reports" is created
    Then the assignee is the Process Initiator or the Contractor
    And the text displayed in the form is "Please complete this task after you have sent the Interim PBC Reports to the provider."
    And a due date of 9 months from start of the measurement period.

