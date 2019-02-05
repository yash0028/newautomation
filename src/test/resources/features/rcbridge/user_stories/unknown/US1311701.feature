# Last updated on 
@MVP
@US1311701
@releaseUnknown
@iterationUnknown
Feature: US1311701 - Med Nec clause table audit trail  - Facility

  @TC701675
  @Manual
  @Functional
  @MVP
  Scenario: TC701675 - [RL0]
    Given the med nec clause code record has been updated in the table
    When the update has been recorded in CMD
    Then audit information is recorded and available

