# Last updated on 
@Arvind
@US1244333
@2019.PI08
@2019.PI08.01
@releasePresent
@iterationPast
Feature: US1244333 - 2 & 3 HCE Modeling - Rate Escalator

  @TC564831
  @Automated
  @Functional
  @Arvind
  Scenario: TC564831 - [RL0]
    Given a rate escalator exists
    When the task "HCE Modeling: Request Submitted" is created
    Then the assignee is the Process Initiator or the Contractor, if process was created by compliance manager
    And the text displayed in the form is "Please complete this task after you have submitted a request for HCE Modeling."
    And upon completion of this task, the "HCE Modeling: Modeling Received" task is created

  @TC863803
  @Manual
  @Functional
  @Arvind
  Scenario: TC863803 - [RL1]
    Given a rate escalator exists
    When the task "HCE Modeling: Modeling Received" is created
    Then the assignee is the Process Initiator or the Contractor
    And the text displayed in the form is "Please complete this task after you have received the Modeling information from HCE"
    And a due date of 10 business days from creation of the task.
    And upon completion of this task, "Submit Fee Schedules on the MSPS site" is created

