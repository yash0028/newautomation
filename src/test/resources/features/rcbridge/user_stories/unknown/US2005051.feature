# Last updated on 
@Adele_R
@US2005051
@releaseUnknown
@iterationUnknown
Feature: US2005051 - MNSPS Fee Schedule PROS Pricing Operations Senior Manager decision - Physician

  @TC951873
  @Manual
  @Functional
  @Adele_R
  Scenario: TC951873 - [RL0]
    Given MNSPS Fee Schedule need is identified in Physician workflow
    When the task MNSPS: PROS Pricing Operations Senior Manager Approval Request is created
    Then the assignee is the Process Initiator or the Contractor
    And the form has "Decision of Market CEO* : Radio button with option Approved and Denied"
    And when "Approved" is chosen the "MNSPS: PROS Vice-President Approval Request" task is created
    And when "Denied" is chosen the "MNSPS: Denied Approval Request" task is created
    And the contractor is able to upload the email with decision provided by the PROS Pricing Operations Senior Manager
    And the contractor is able to provide the PROS Pricing Operations Senior Manager name who took the decision.

