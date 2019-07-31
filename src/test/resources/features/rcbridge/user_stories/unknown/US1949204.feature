# Last updated on 
@Adele_R
@US1949204
@releaseUnknown
@iterationUnknown
Feature: US1949204 - (Copy of) MNSPS Fee Schedule submission - Physician

  @TC920651
  @Manual
  @Functional
  @Adele_R
  Scenario: TC920651 - [RL0]
    Given MNSPS Fee Schedule need is identified in Physician workflow
    When the task MNSPS: Submit Request is created
    Then the assignee is the Process Initiator or the Contractor
    And the text displayed is "Please complete this task after you have submitted a request to HCE."

