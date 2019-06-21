# Last updated on 
@US1244333
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1244333 - 2 Request HCE Modeling - Rate Escalator

  @TC564831
  @Automated
  @Functional
  Scenario: TC564831 - [RL0]
    Given a rate escalator exists
    When the task "HCE Modeling: Request Submitted" is created
    Then the assignee is the Process Initiator or the Contractor, if process was created by compliance manager
    And the text displayed in the form is "Please complete this task after you have submitted a request for HCE Modeling."

