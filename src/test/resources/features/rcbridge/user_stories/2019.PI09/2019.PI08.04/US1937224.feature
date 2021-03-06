# Last updated on 
@Arvind
@Suman
@Go_Live
@Adele_R
@US1937224
@2019.PI09
@2019.PI08.04
@releasePresent
@iterationPast
Feature: US1937224 - 7 Interim Report - Rate Escalator

  @TC911636
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC911636 - [RL0]
    Given a variable rate escalator exists with PBC as variable basis
    When it is 9 months before the effective date of the escalator
    Then Compliance Manager starts the Interim Process
    And the "Deliver Interim PBC Reports" task is created

  @TC921993
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC921993 - [RL1]
    Given a variable rate escalator exists with PBC as variable basis
    When the task "Deliver Interim PBC Reports" is created
    Then the assignee is the Process Initiator or the Contractor
    And the text displayed in the form is "Please complete this task after you have sent the Interim PBC Reports to the provider."

