# Last updated on 
@Adele_R
@US1849169
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1849169 - 8 Final PBC Report - Rate Escalator

  @TC848053
  @Manual
  @Functional
  @Adele_R
  Scenario: TC848053 - [RL0]
    Given a rate escalator exists
    When the task "Deliver PBC Reports" is created
    Then the assignee is the Process Initiator or the Contractor
    And the text displayed in the form is "Please complete this task after you have sent the PBC Reports to the provider."
    And a due date of ...business days from end of the measurement period.

