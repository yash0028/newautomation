# Last updated on 
@Arvind
@Adele_R
@US1849133
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1849133 - 7 & 8 PBC Report - Rate Escalator

  @TC848051
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC848051 - [RL0]
    Given a rate escalator exists
    When the task "Deliver Interim PBC Reports" is created
    Then the assignee is the Process Initiator or the Contractor
    And the text displayed in the form is "Please complete this task after you have sent the Interim PBC Reports to the provider"
    And a due date of 9 months from start of the measurement period.

  @TC863805
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC863805 - [RL1]
    Given a rate escalator exists
    When the task "Deliver PBC Reports" is created
    Then the assignee is the Process Initiator or the Contractor
    And the text displayed in the form is "Please complete this task after you have sent the PBC Reports to the provider."
    And a due date of ...business days from end of the measurement period.

