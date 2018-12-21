# Last updated on 
@A_UI_Story
@US1453733
@2018.PI05
@2018.PI05.02
@MVP
@Maintenance
@releasePresent
@iterationPresent
Feature: US1453733 - UI/UX- New web Page for CMD page displaying all Type 2 errors and related activities Wire frames only

  @TC652720
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC652720 - [RL1]
    Given a contract has multiple errors on the same contract line
    Then the contract error history data is stored in a report-able format
    And the contract error history is retained within the database

