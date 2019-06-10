# Last updated on 
@Adele_R
@US1839080
@2019.PI08
@releaseUnknown
@iterationUnknown
Feature: US1839080 - HCE Modeling Received - Rate Escalator

  @TC842676
  @Manual
  @Functional
  @Adele_R
  Scenario: TC842676 - [RL0]
    Given a rate escalator exists
    When the task "HCE Modeling: Modelling Received" is created
    Then the assignee is the Process Initiator or the Contractor
    And the text displayed in the form is "Please complete this task after you have received the Modeling information from HCE"
    And a due date of 10 business days from creation of the task.

