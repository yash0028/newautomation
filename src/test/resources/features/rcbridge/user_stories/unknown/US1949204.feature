# Last updated on 
@Adele_R
@US1949204
@releaseUnknown
@iterationUnknown
Feature: US1949204 - MNSPS Fee Schedule Market CEO - Physician

  @TC920651
  @Manual
  @Functional
  @Adele_R
  Scenario: TC920651 - [RL0]
    Given MNSPS Fee Schedule need is identified in Physician workflow
    When the task MNSPS: Market CEO Approval Request is created
    Then the assignee is the Process Initiator or the Contractor
    And the form has "Decision of Market CEO* : Radio button with option Approved and Denied"
    And when "Approved" is chosen the "MNSPS: UHN Regional President Approval Request" task is created
    And when "Denied" is chosen the "MNSPS: Denied Approval Request" task is created
    And the contractor is able to upload the email with decision provided by the Market CEO team member
    And the contractor is able to provide the Market CEO name who took the decision.

