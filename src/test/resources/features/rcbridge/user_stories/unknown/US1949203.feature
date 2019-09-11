# Last updated on 
@Adele_R
@Non_MVP
@US1949203
@releaseUnknown
@iterationUnknown
Feature: US1949203 - MNSPS Fee Schedule submission  and HCE decision- Physician

  @TC920654
  @Manual
  @Functional
  @Adele_R
  @Non_MVP
  Scenario: TC920654 - [RL0]
    Given MNSPS Fee Schedule need is identified in Physician workflow
    When the task MNSPS: Submit Request is created
    Then the assignee is the Process Initiator or the Contractor
    And the text displayed is "Please complete this task after you have submitted a request to HCE."
    And upon completion of this task, the "HCE Approval Request" task is created

  @TC920655
  @Manual
  @Functional
  @Adele_R
  @Non_MVP
  Scenario: TC920655 - [RL1]
    Given MNSPS Fee Schedule need is identified in Physician workflow
    When the task HCE Approval Request is created
    Then the assignee is the Process Initiator or the Contractor
    And the form has "Decision of HCE* : Radio button with option Approved and Denied"
    And when "Approved" is chosen the "MNSPS: Market CEO Approval Request" task is created
    And when "Denied" is chosen the "MNSPS: Denied Approval Request" task is created
    And the contractor is able to upload the email with decision provided by the HCE team member
    And the contractor is able to provide the HCE team member name who took the decision

