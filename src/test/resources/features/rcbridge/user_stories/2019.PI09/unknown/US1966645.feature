# Last updated on 
@Adele_R
@US1966645
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1966645 - Request Clarification on Request

  @TC960850
  @Manual
  @Functional
  @Adele_R
  Scenario: TC960850 - [RL0]
    Given a user is on the "Submit Fee Schedules on the MSPS site" task
    When needing clarification on the request
    Then there is a section, "Clarification Required" and Comments (required)
    And a spreadsheet needs to be attached
    And upon completion, the task "Review Rate Escalator Details" is assigned to the process initiator
    And the process initiator is able to view "Clarification Required" section with comments provided
    And the process initiator is able to view the attached spreadsheet

