# Last updated on 
@Arvind
@Adele_R
@US1849133
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationPast
Feature: US1849133 - 8 PBC final Report - Rate Escalator

  @TC848051
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC848051 - [RL0]
    Given a variable rate escalator exists with PBC as variable basis
    When the task "Deliver PBC Reports" is created
    Then the assignee is the Process Initiator or the Contractor
    And the text displayed in the form is "Please complete this task after you have sent the PBC Reports to the provider."
    And a due date of 3 months prior to the effective date of the rate escalator.

  @RC_unlinked
  @TC863805
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC863805 - [RL1]
    Given a variable rate escalator exists with PBC as variable basis
    When the task "Deliver PBC Reports" is created
    Then the assignee is the Process Initiator or the Contractor
    And the text displayed in the form is "Please complete this task after you have sent the PBC Reports to the provider."
    And a due date of 3 months prior to the effective date of the rate escalator.

