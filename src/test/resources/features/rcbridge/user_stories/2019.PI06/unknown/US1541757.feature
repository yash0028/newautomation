# Last updated on 
@US1541757
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1541757 - Present retro request to Market Lead for approval

  @TC709180
  @Manual
  @Functional
  Scenario: TC709180 - [RL0]
    Given an "initiate retro" request task is completed
    When the Market Lead opens the task
    Then all of the data in fields from the "Initiate Retro" can be modified
    And there is an "Approve" option
    And there is a "Deny" option
    And there is a Comments field
    And comments are required when "Deny" is selected
    And the task is assigned a Due Date of two business days

