# Last updated on 
@Adele_R
@US1956569
@releaseUnknown
@iterationUnknown
Feature: US1956569 - MNSPS Fee Schedule Custom PROS Pricing Operations Manager decision - Physician

  @TC949602
  @Manual
  @Functional
  @Adele_R
  Scenario: TC949602 - [RL0]
    Given MNSPS Fee Schedule need is identified in Physician workflow
    When the task MNSPS: Custom PROS Pricing Operations Manager Approval Request is created
    Then the assignee is the Process Initiator or the Contractor
    And the form has "Decision of Market CEO* : Radio button with option Approved and Denied"
    And when "Approved" is chosen the "MNSPS: PROS Pricing Operations Senior Manager Approval Request" task is created
    And when "Denied" is chosen the "MNSPS: Denied Approval Request" task is created
    And the contractor is able to upload the email with decision provided by the Market CEO team member
    And the contractor is able to provide the Custom PROS Pricing Operations Manager name who took the decision.

