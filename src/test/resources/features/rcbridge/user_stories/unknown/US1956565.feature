# Last updated on 
@Adele_R
@US1956565
@releaseUnknown
@iterationUnknown
Feature: US1956565 - MNSPS Fee Schedule Government Vice President decision - Physician

  @TC949603
  @Manual
  @Functional
  @Adele_R
  Scenario: TC949603 - [RL0]
    Given MNSPS Fee Schedule need is identified in Physician workflow
    When the task MNSPS: Government Vice President Approval Request is created
    Then the assignee is the Process Initiator or the Contractor
    And the form has "Decision of Market CEO* : Radio button with option Approved and Denied"
    And when "Approved" is chosen the "MNSPS: Custom PROS Pricing Operations Manager Approval Request" task is created
    And when "Denied" is chosen the "MNSPS: Denied Approval Request" task is created
    And the contractor is able to upload the email with decision provided by the Government Vice President
    And the contractor is able to provide the Government Vice President name who took the decision.

