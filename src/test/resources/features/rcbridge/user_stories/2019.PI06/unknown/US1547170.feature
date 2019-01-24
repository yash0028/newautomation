# Last updated on 
@US1547170
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1547170 - Present retro request to LOB COO for approval

  @TC709181
  @Manual
  @Functional
  Scenario: TC709181 - [RL0]
    Given a retro approval request is approved by NPPP
    When the NPPP user opens the task
    Then all of the data in fields from the "Initiate Retro" can be modified
    And the "Retro Approval Code" can be selected (required if approved). (See attached spreadsheet for codes)
    And there is an "Approve" option
    And there is a "Deny" option
    And there is a Comments field
    And comments are required when "Deny" is selected

