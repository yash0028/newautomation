# Last updated on 
@US1839080
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1839080 - 3 HCE Modeling Received - Rate Escalator

  @TC842676
  @Manual
  @Functional
  Scenario: TC842676 - [RL0]
    Given a rate escalator exists
    When the task "HCE Modeling: Modeling Received" is created
    Then the assignee is the Process Initiator or the Contractor
    And the text displayed in the form is "Please complete this task after you have received the Modeling information from HCE"
    And a due date of 10 business days from creation of the task.

