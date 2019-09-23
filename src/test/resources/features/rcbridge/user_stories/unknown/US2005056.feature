# Last updated on 
@Non_MVP
@US2005056
@releaseUnknown
@iterationUnknown
Feature: US2005056 - MNSPS Fee Schedule PROS Vice-President decision - Physician

  @TC951874
  @Manual
  @Functional
  @Non_MVP
  Scenario: TC951874 - [RL0]
    Given MNSPS Fee Schedule need is identified in Physician workflow
    When the task MNSPS: PROS Vice-President Approval Request is created
    Then the assignee is the Process Initiator or the Contractor
    And the form has "Decision of Market CEO* : Radio button with option Approved and Denied"
    And when "Approved" is chosen the "MNSPS: PROS Vice-President Approval Request" task is created
    And when "Denied" is chosen the "MNSPS: Denied Approval Request" task is created
    And the contractor is able to upload the email with decision provided by the PROS Vice-President
    And the contractor is able to provide the PPROS Vice-President name who took the decision.

