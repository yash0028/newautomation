# Last updated on 
@Adele_R
@Non_MVP
@US1956558
@releaseUnknown
@iterationUnknown
Feature: US1956558 - MNSPS Fee Schedule UHN Regional President - Physician

  @TC949606
  @Manual
  @Functional
  @Adele_R
  @Non_MVP
  Scenario: TC949606 - [RL0]
    Given MNSPS Fee Schedule need is identified in Physician workflow
    When the task MNSPS: UHN Regional President Approval Request is created
    Then the assignee is the Process Initiator or the Contractor
    And the form has "Decision of Market CEO* : Radio button with option Approved and Denied"
    And when "Approved" is chosen the "MNSPS: Government Vice President Approval Request" task is created
    And when "Denied" is chosen the "MNSPS: Denied Approval Request" task is created
    And the contractor is able to upload the email with decision provided by the UHN Regional President
    And the contractor is able to provide the UHN Regional President name who took the decision.

